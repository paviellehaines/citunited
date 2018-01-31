# READ IN AND CLEAN DATA --------------------------------------------------

library(foreign)
library(data.table)
library(dplyr)
library(plyr)
library(tidyr)

elections1 <- read.dta("34297-0001-Data.dta")
elections2 <- read.csv("SLERs2011to2012_only_2013_05_14.csv")

col14 <- read.csv("2014GeneralPrecinctResults.csv")


# ORGANIZE AND GENERATE MISSING DATA FOR 2011-2012 ------------------------

elections2 <- subset(elections2, V17 == 1) #Remove non-final elections
elections2$V11a <- paste(elections2$V08, elections2$V09, elections2$V10, sep = ".")

elections2$election_id <- elections2 %>% group_indices(V02, V05, V11a, V16, V07)#Create unique election ID
elections2$candid <- elections2 %>% group_indices(election_id, V19) #Create unique candidate ID


totvotes <- aggregate(elections2$V23, by = list(elections2$election_id), FUN = sum) #Sum total votes per election
colnames(totvotes) <- c("election_id", "totalvote")
totvotes$election_id <- as.integer(totvotes$election_id)

elections2 <- subset(elections2, V19 != "WRITEIN") #Remove write-ins for candidate count

candvotes <- aggregate(elections2$V23, by = list(elections2$candid), FUN = sum) #Sum total votes per candidate per election
colnames(candvotes) <- c("candid", "candvotes")
candvotes$candid <- as.integer(candvotes$candid)


duplicates <- data.frame(table(elections2$candid)) #Count duplicate candidates in each election
colnames(duplicates) <- c("candid", "duplicates")
duplicates$candid <- as.integer(duplicates$candid)
duplicates$duplicates <- as.integer(duplicates$duplicates)


totvotes <- data.table(totvotes) #Prepare data for merge
candvotes <- data.table(candvotes)
duplicates <- data.table(duplicates)
elections2 <- data.table(elections2)


elections2 <- merge(elections2, totvotes, by="election_id") #Merge data
elections2 <- merge(elections2, candvotes, by="candid")
elections2 <- merge(elections2, duplicates, by="candid")
elections2$duplicates <- as.integer(elections2$duplicates)


elections2a <- subset(elections2, duplicates == 1) #Subset candidates without duplictaes

reconcile <- subset(elections2, duplicates > 1) #Remove and subset duplicated candidate ID's
reconcile1 <- arrange(reconcile, candid, desc(V23))
reconcile2 <- aggregate(reconcile1$V23, by = list(reconcile1$candid), FUN = max) #Remove duplicates
colnames(reconcile2) <- c("candid", "V23")
reconcile2$max <- 1
reconcile3 <- merge(reconcile2,reconcile, by= c("candid", "V23"), all = TRUE)
reconcile4 <- subset(reconcile3, !is.na(reconcile3$max))
reconcile5 <- subset(reconcile4, select = -c(max))


elections2 <- rbind(elections2a, reconcile5)


candidatenum <- data.frame(table(elections2$election_id)) #Count number of candidates in each election
colnames(candidatenum) <- c("election_id", "numrow")
candidatenum$election_id <- as.integer(candidatenum$election_id)

candidatenum <- data.table(candidatenum) #Prepare data for merge
elections2 <- merge(elections2, candidatenum, by = "election_id")


elections2$candperc <- (elections2$candvotes/elections2$totalvote)*100 #Get candidates percentage



missing <- subset(elections2, is.na(elections2$candperc)) #Subset candidates who are missing percentages; Notice they are all races with one candidate and no runner up
elections2b <- subset(elections2, !is.na(elections2$candperc))
missing$candperc <- 100 #Set candidates percentages to 100
missing$totalvote <- 1000

elections2 <- rbind(missing, elections2b) #Put data back together


elections2[,candrank:=rank(-candvotes,ties.method="first"),by = election_id] #Add rank by race
data.frame(elections2)


nowinner <- aggregate(elections2$V24, by = list(elections2$election_id), FUN = sum) #Identify elections with no winners and remove
nowinner <- subset(nowinner, x == 0) #Notice that all elections have winners
nrow(nowinner)


noru <- subset(elections2, numrow <= V13) #Generate margin of victory for elections with no runnerups
noru$ru <- ifelse(noru$candrank - noru$V13 == 1, 1, 0)
noru$ruvotes <- 0
noru$ruperc <- 0
noru$margin <- noru$candperc - noru$ruperc


ru1 <- subset(elections2, numrow > V13) #Generate margin of victory of elections with runnerups
ru1$ru <- ifelse(ru1$candrank - ru1$V13 == 1, 1, 0)
ruperc <- subset(ru1, ru == 1, select = c("candperc", "election_id", "candvotes"))
names(ruperc) <- c("ruperc", "election_id", "ruvotes")
ru <- merge(ru1, ruperc, by = "election_id", all = TRUE)
ru$margin <- ru$candperc - ru$ruperc


elections2 <- rbind(noru, ru) #Put the data back together

elections2win <- subset(elections2, V24 == 1) #Subset only the winners

elections2win$V12 <- ifelse(elections2win$V13 > 1, "Multimember District", "Single-Member District")


elections2win <- subset(elections2win, select = c(V02, V05, V07, V08, V09, V10, V11a, V12, V13, numrow, V14, V16, V19, V21, V22, candvotes, ruvotes, totalvote, candperc, ruperc, margin))
names(elections2win) <- c("state", "year", "seat", "distname", "distnum", "distpost", "distid", "distkind", "numwinners", "numcands", "term", "electionkind", "candname", "candparty", "incumbent", "candvotes", "ruvotes", "totalvotes", "candperc", "ruperc", "margin")


# ORGANIZE AND GENERATE MISSING DATA FOR 1967-2010 ------------------------

elections1 <- subset(elections1, V17 == 1) #Remove non-final elections
elections1 <- subset(elections1, V05 >= 1980) #Remove early elections

elections1$V10new <- elections1$V10 #Create a unique district ID
elections1$V10new[is.na(elections1$V10new)] <- "."
elections1$V11a <- paste(elections1$V08, elections1$V09, elections1$V10new, sep = ".")


elections1$election_id <- elections1 %>% group_indices(V02, V05, V11a, V16, V07)#Create unique election ID

elections1$candid <- elections1 %>% group_indices(election_id, V19) #Create unique candidate ID


totvotes <- aggregate(elections1$V23, by = list(elections1$election_id), FUN = sum) #Sum total votes per election
colnames(totvotes) <- c("election_id", "totalvote")
totvotes$election_id <- as.integer(totvotes$election_id)


candvotes <- aggregate(elections1$V23, by = list(elections1$candid), FUN = sum) #Sum total votes per candidate per election
colnames(candvotes) <- c("candid", "candvotes")
candvotes$candid <- as.integer(candvotes$candid)


duplicates <- data.frame(table(elections1$candid)) #Count duplicate candidates in each election
colnames(duplicates) <- c("candid", "duplicates")
duplicates$candid <- as.integer(duplicates$candid)
duplicates$duplicates <- as.integer(duplicates$duplicates)


totvotes <- data.table(totvotes) #Prepare data for merge
candvotes <- data.table(candvotes)
duplicates <- data.table(duplicates)
elections1 <- data.table(elections1)


elections1 <- merge(elections1, totvotes, by="election_id") #Merge data
elections1 <- merge(elections1, candvotes, by="candid")
elections1 <- merge(elections1, duplicates, by="candid")


elections1a <- subset(elections1, duplicates == 1) #Subset candidates without duplictaes

reconcile <- subset(elections1, duplicates > 1) #Remove and subset duplicated candidate ID's
reconcile1 <- arrange(reconcile, candid, desc(V23))
reconcile2 <- aggregate(reconcile1$V23, by = list(reconcile1$candid), FUN = max) #Remove duplicates
colnames(reconcile2) <- c("candid", "V23")
reconcile2$max <- 1
reconcile3 <- merge(reconcile2,reconcile, by= c("candid", "V23"), all = TRUE)
reconcile4 <- subset(reconcile3, !is.na(reconcile3$max))
reconcile5 <- subset(reconcile4, select = -c(max))


elections1 <- rbind(elections1a, reconcile5)

elections1$numrow <- elections1$V25 #Number of candidats in the election

elections1$candperc <- (elections1$candvotes/elections1$totalvote)*100 #Get candidates percentage


missing <- subset(elections1, is.na(elections1$candperc)) #Subset candidates who are missing percentages, but can be deduced
elections1b <- subset(elections1, !is.na(elections1$candperc))


missingnocomp <- subset(missing, V13 == 1 & V13 >= V25) #Identify which candidates were unchallenged and give them 100% of votes
missingnocomp$candperc <- 100
missingnocomp$candvotes <- 1000


missingcomp <- subset(missing, V13 != 1 | V13 < V25) #Subset data that is missing and cannot be deduced
missingcomp$problem <- "missing"

problemdata <- subset(elections1, election_id == 480 | election_id == 27965 | election_id ==  49449 | election_id ==  49651 | election_id ==  50794 | election_id ==  52607 | election_id ==  54025 | election_id ==  54973 | election_id ==  56072 | election_id ==  56287 | election_id ==  56580 | election_id ==  57569 | election_id ==  72767 | election_id ==  75615 | election_id ==  77018 | election_id ==  85763 | election_id ==  90869 | election_id ==  90872 | election_id ==  90926 | election_id ==  90985 | election_id ==  91071 | election_id ==  91876 | election_id ==  92180)
problemdata$problem <- "wrongwinner"

problems <- rbind(missingcomp, problemdata)
write.csv(problems, "Missing Data.csv")


elections1 <- rbind(missingnocomp, elections1b) #Put data back together


elections1[,candrank:=rank(-candvotes,ties.method="first"),by= election_id] #Add rank by race
data.frame(elections1)


nowinner <- aggregate(elections1$V24, by = list(elections1$election_id), FUN = sum) #Identify elections with no winners and remove
nowinner <- subset(nowinner, x == 0) #Notice that all elections have winners
nrow(nowinner)

noru <- subset(elections1, numrow <= V13) #Generate margin of victory for elections with no runnerups
noru$ru <- ifelse(noru$candrank - noru$V13 == 1, 1, 0)
noru$ruvotes <- 0
noru$ruperc <- 0
noru$margin <- noru$candperc - noru$ruperc


ru1 <- subset(elections1, numrow > V13) #Generate margin of victory of elections with runnerups
ru1$ru <- ifelse(ru1$candrank - ru1$V13 == 1, 1, 0)
ruperc <- subset(ru1, ru == 1, select = c("candperc", "election_id", "candvotes"))
names(ruperc) <- c("ruperc", "election_id", "ruvotes")
ru <- merge(ru1, ruperc, by = "election_id", all = TRUE)
ru$margin <- ru$candperc - ru$ruperc


elections1 <- rbind(noru, ru) #Put the data back together

elections1win <- subset(elections1, V24 == 1) #Subset only the winners

problems <- subset(elections1win, margin <= 0)

elections1win <- subset(elections1win, election_id != 480 & election_id != 27965 & election_id !=  49449 & election_id !=  49651 & election_id !=  50794 & election_id !=  52607 & election_id !=  54025 & election_id !=  54973 & election_id !=  56072 & election_id !=  56287 & election_id !=  56580 & election_id !=  57569 & election_id !=  72767 & election_id !=  75615 & election_id !=  77018 & election_id !=  85763 & election_id !=  90869 & election_id !=  90872 & election_id !=  90926 & election_id !=  90985 & election_id !=  91071 & election_id !=  91876 & election_id !=  92180)


elections1win <- subset(elections1win, select = c(V02, V05, V07, V08, V09, V10, V11a, V12, V13, numrow, V14, V16, V19, V21, V22, candvotes, ruvotes, totalvote, candperc, ruperc, margin))
names(elections1win) <- c("state", "year", "seat", "distname", "distnum", "distpost", "distid", "distkind", "numwinners", "numcands", "term", "electionkind", "candname", "candparty", "incumbent", "candvotes", "ruvotes", "totalvotes", "candperc", "ruperc", "margin")



# MERGE 1967-2010 AND 2011-2012 -------------------------------------------

elections <- rbind(elections1win, elections2win) #Combine ICPSR datasets

elections <- data.frame(elections)
elections$data <- "icpsr"

write.csv(elections, "Final Organized Data.csv") #Write to a CSV file and combine with corrected and collected data in Excel


# ELECTION ANALYSIS -------------------------------------------------------

elections1 <- read.csv("Final Organized Data Ver 3.csv") #Read in new CSV file

head(elections1)
 
elections1$electionkind1 <- ifelse(elections1$electionkind == "G" | elections1$electionkind == "GR", "G", elections1$electionkind)

elections1$election_id <- elections1 %>% group_indices(state, seat, year, electionkind1) #Create unique election ID

elections1$winner <- 1 #Create a variable showing that all candidates in data are winners to allow for counting up total candidates by election


elections1$Rseats1 <- ifelse(elections1$candparty == "R", 1, 0) #Create new variables to calculate R seat and vote share
elections1$Rvotes1 <- ifelse(elections1$candparty == "R", elections1$candvotes, 0)
elections1$Pseats1 <- ifelse(elections1$candparty == "R" | elections1$candparty == "D", 1, 0)
elections1$Pvotes1 <- ifelse(elections1$candparty == "R" | elections1$candparty == "D", elections1$totalvotes, 0)


electseats <- aggregate(elections1$winner, by = list(elections1$election_id), FUN = sum) #Aggregate new variables
electvotes <- aggregate(elections1$totalvotes, by = list(elections1$election_id), FUN = sum)

Pseats <- aggregate(elections1$Pseats1, by = list(elections1$election_id), FUN = sum)
Pvotes <- aggregate(elections1$Pvotes1, by = list(elections1$election_id), FUN = sum)

Rseats <- aggregate(elections1$Rseats1, by = list(elections1$election_id), FUN = sum)
Rvotes <- aggregate(elections1$Rvotes1, by = list(elections1$election_id), FUN = sum)



names(electseats) <- c("election_id", "electseats") #Rename aggregations
names(electvotes) <- c("election_id", "electvotes")

names(Pseats) <- c("election_id", "Pseats2")
names(Pvotes) <- c("election_id", "Pvotes2")

names(Rseats) <- c("election_id", "Rseats2")
names(Rvotes) <- c("election_id", "Rvotes2")


elections2 <- merge(elections1, electseats, by = "election_id") #Merge aggregations back with original dataset
elections2 <- merge(elections2, electvotes, by = "election_id")

elections2 <- merge(elections2, Pseats, by = "election_id")
elections2 <- merge(elections2, Pvotes, by = "election_id")

elections2 <- merge(elections2, Rseats, by = "election_id")
elections2 <- merge(elections2, Rvotes, by = "election_id")


elections2$Rseats <- elections2$Rseats2/elections2$electseats*100 #Calculate R vote and seat share
elections2$Rvotes <- elections2$Rvotes2/elections2$electvotes*100

elections2$PRseats <- elections2$Rseats2/elections2$Pseats2*100
elections2$PRvotes <- elections2$Rvotes2/elections2$Pvotes2*100

elections2$originaldat <- 1

legislate <- subset(elections2, select = -c(Rseats1, Rseats2, Rvotes1, Rvotes2, Pseats1, Pvotes1, Pseats2, Pvotes2)) #Remove uncessary variables

# ORGANIZE THE DATA FOR ANALYSIS ------------------------------------------


legislate$nextelect <- legislate$year + legislate$term #Create a variable showing when the rep will next be up for reelection

i <- 1990 #Create a loop to create a file that has all sitting reps for each legislative year
  
#Run the loop
while (i <= 2015){
    legislate1 <- subset(legislate, year < i)
    legislate2 <- subset(legislate1, nextelect >= i)
    legislate2$legyear <- i
    data.frame(legislate2)
    filename <- as.character(paste("Legislative Data ", i, ".csv", sep = ""))
    write.csv(legislate2, filename)
    i <- i + 1 #Reset i for the next iteration of the loop
  }

  
year90 <- read.csv("Legislative Data 1990.csv") #Read back in each legislative year file
year91 <- read.csv("Legislative Data 1991.csv")
year92 <- read.csv("Legislative Data 1992.csv")
year93 <- read.csv("Legislative Data 1993.csv")
year94 <- read.csv("Legislative Data 1994.csv")
year95 <- read.csv("Legislative Data 1995.csv")
year96 <- read.csv("Legislative Data 1996.csv")
year97 <- read.csv("Legislative Data 1997.csv")
year98 <- read.csv("Legislative Data 1998.csv")
year99 <- read.csv("Legislative Data 1999.csv")
year00 <- read.csv("Legislative Data 2000.csv")
year01 <- read.csv("Legislative Data 2001.csv")
year02 <- read.csv("Legislative Data 2002.csv")
year03 <- read.csv("Legislative Data 2003.csv")
year04 <- read.csv("Legislative Data 2004.csv")
year05 <- read.csv("Legislative Data 2005.csv")
year06 <- read.csv("Legislative Data 2006.csv")
year07 <- read.csv("Legislative Data 2007.csv")
year08 <- read.csv("Legislative Data 2008.csv")
year09 <- read.csv("Legislative Data 2009.csv")
year10 <- read.csv("Legislative Data 2010.csv")
year11 <- read.csv("Legislative Data 2011.csv")
year12 <- read.csv("Legislative Data 2012.csv")
year13 <- read.csv("Legislative Data 2013.csv")
year14 <- read.csv("Legislative Data 2014.csv")
year15 <- read.csv("Legislative Data 2015.csv")

leganalysis <- rbind(year90, year91, year92, year93, year94, year95, year96, year97, year98, year99, year00, year01, year02, year03, year04, year05, year06, year07, year08, year09, year10, year11, year12, year13, year14, year15) #Combine legislative years

write.csv(leganalysis, "Final Legislative Analysis Data.csv") #Do light variable editing in excel to make sure all variables are is coded consistently


# PARTISAN DOMINATION -----------------------------------------------------

legislate <- read.csv("Final Legislative Analysis Data.csv") #Read in new dataset

legislate <- droplevels(subset(legislate, state != "NE" & state != "LA")) #Remove states with non-partisan elections

legislate$legislative_id <- legislate %>% group_indices(state, seat, legyear) #Create unique legislative ID

partyseats1 <- table(legislative_id = legislate$legislative_id, party = legislate$candparty) #Tabulate the number of seats held by each party for each election ID
partyseats2 <- table(legislate$legislative_id, legislate$candparty)
partyseats1 <- as.data.frame(partyseats1)
partyseats2 <- as.data.frame.matrix(partyseats2)
partyseats <- cbind(partyseats1$legislative_id, partyseats2, row.names = NULL)
names(partyseats) <- c("legislative_id", "D", "I", "R")

legislate1 <- merge(partyseats, legislate, by = "legislative_id") #Merge counts with full dataset
legislate1 <- unique(legislate1)

legislate1$majority1 <- ifelse(legislate1$D > legislate1$R, "D", ifelse(legislate1$D == legislate1$R, "T", "R")) #Identify the majority and minority party

legislate1$minority1 <- ifelse(legislate1$majority == "T", "T", ifelse(legislate1$majority == "D", "R", "D"))

legislate1$majority <- ifelse(legislate1$majority1 == "T", "D", legislate1$majority)

legislate1$minority <- ifelse(legislate1$minority1 == "T", "R", legislate1$minority)

legislate1$majorseatdiff <- abs(legislate1$D - legislate1$R) #Get difference in seats bewteen major party and minor party

legislate1$Rseatdiff <- legislate1$R - legislate1$D #Get seat difference in seats between Republicans and Democrats

legislate1$totseats <- legislate1$D + legislate1$I + legislate1$R #Count total seats

legislate1$Dperc <- legislate1$D/legislate1$totseats*100 #Calculate percent of Democratic seats

legislate1$Iperc <- legislate1$I/legislate1$totseats*100 #Calculate percent of independent seats

legislate1$Rperc <- legislate1$R/legislate1$totseats*100 #Calcualte percent of Republican seats

legislate1$majorpercdiff <- abs(legislate1$Dperc - legislate1$Rperc) #Calculate differnece in seat percentage between major and minor parties

legislate1$Rpercdiff <- legislate1$Rperc - legislate1$Dperc #Calculate seat percentage difference between Republicans and Democrats

legislate1$majorover50 <- ifelse(legislate1$majority == "D", legislate1$Dperc - 50, legislate1$Rperc - 50) #Calculate the percentage of majority party seats over 50%

legislate1$Rover50 <- legislate1$Rperc - 50 #Calculate the percentage of Republican seats over or under 50%

legislate1$nonminor <- ifelse(legislate1$candparty != legislate1$minority, 1, 0) #Identify non-minor reps

legislate1$nonminorid <- legislate1 %>% group_indices(legislative_id, nonminor) #Create unique candidate ID

legislate1 <- data.table(legislate1) #Rank candidates within each legislative year and chamber
legislate1[,candranknonminor:=rank(margin,ties.method="first"),by = nonminorid]

legislate2 <- data.frame(legislate1)
head(legislate2)

write.csv(legislate2, "Partisan Domination 1.csv") #Check data visually in excel and organize variables

legislate3 <- read.csv("Partisan Domination 2.csv") #Read data back in

legislate3a <- subset(legislate3, nonminor == 0) #Separate minor and non-minor party reps
legislate3b <- subset(legislate3, nonminor == 1)


legislate3b <- data.table(legislate3b) #Create rank by partisanship
legislate3b[,nonminorpidrank:=rank(margin,ties.method="first"),by = c("legislative_id", "candparty")]


legislate3b$D <- as.numeric(legislate3b$D) #Format data for if-then conditions
legislate3b$I <- as.numeric(legislate3b$I)
legislate3b$R <- as.numeric(legislate3b$R)


legislate3b$newD1 <- legislate3b$D #Calculate the new number of Democratic seats if the minority party won a seat, starting with the weakest rep
legislate3b$newD2 <- ifelse(legislate3b$minority == "D", legislate3b$D + legislate3b$candranknonminor, legislate3b$newD1)
legislate3b$newD <- ifelse(legislate3b$candparty == "D", legislate3b$D - legislate3b$nonminorpidrank, legislate3b$newD2)


legislate3b$newI1 <- legislate3b$I #Calculate the new number of indpendent seats if the minority party won a seat, starting with the weakest rep
legislate3b$newI2 <- ifelse(legislate3b$minority == "I", legislate3b$I + legislate3b$candranknonminor, legislate3b$newI1)
legislate3b$newI <- ifelse(legislate3b$candparty == "I", legislate3b$I - legislate3b$nonminorpidrank, legislate3b$newI2)


legislate3b$newR1 <- legislate3b$R #Calculate the new number of Republican seats if the minority party won a seat, starting with the weakest rep
legislate3b$newR2 <- ifelse(legislate3b$minority == "R", legislate3b$R + legislate3b$candranknonminor, legislate3b$newR1)
legislate3b$newR <- ifelse(legislate3b$candparty == "R", legislate3b$R - legislate3b$nonminorpidrank, legislate3b$newR2)


legislate3b <- subset(legislate3b, select = -c(newD1, newD2, newI1, newI2, newR1, newR2)) #Remove uncessary variables


write.csv(legislate3b, "Partisan Shift.csv") #Visually check data and correct elections with independents in Excel

legislate3bb <- read.csv("Partisan Shift 1.csv") #Read csv back in


legislate3bb$newmajority <- ifelse(legislate3bb$newD > legislate3bb$newR, "D", ifelse(legislate3bb$newD == legislate3bb$newR, "T", "R")) #Identify who the new majority party would be with each newly one seat


legislate3bb$controlshift <- ifelse(legislate3bb$newmajority != "T" & legislate3bb$newmajority != legislate3bb$majority, "Yes", "No") #Identify when the minor party would become the major party


write.csv(legislate3bb, "Partisan Shift 2.csv") #Visually check data and calculate required seat and margin shift in excel

legislate3bc <- read.csv("Partisan Shift 3.csv") #Read data back in

shift <- subset(legislate3bc, select = c(legislative_id, rseatshift, rmarginshift)) #Isolate the newly calculated seat and margin shifts
shift <- na.omit(shift)

legislate3bd <- subset(legislate3bc, select = -c(nonminor, nonminorid, candranknonminor, nonminorpidrank, newD, newI, newR, newmajority, controlshift, rseatshift, rmarginshift)) #Remove uncessary variables

legislate3ab <- subset(legislate3a, select = -c(nonminor, nonminorid, candranknonminor)) #Remov uncessary variables from the original dataset

legislatefinal <- rbind(legislate3ab, legislate3bd) #Combine the original and newly calculted datasets

legislatefinal <- unique(legislatefinal) #Remove duplicates

legislatefinal <- merge(legislatefinal, shift, by = "legislative_id") #Add legislative shifts to the dataset

summary(legislatefinal$margin) #View the data

legislatefinal$percent5a <- ifelse(legislatefinal$margin <= 5, 1, 0) #Identify margins less than 5%

legislatefinal$percent10a <- ifelse(legislatefinal$margin <= 10, 1, 0) #Identify margins less than 10%

legislatefinal$percent15a <- ifelse(legislatefinal$margin <= 15, 1, 0) #Identify margins less than 15%

percent5num <- aggregate(legislatefinal$percent5a, by = list(legislatefinal$legislative_id), FUN = sum) #Add margins less than 5% by legislature
names(percent5num) <- c("legislative_id", "num5")
percent5num <- data.frame(percent5num)
percent5tot <- subset(legislatefinal, select = c(legislative_id, totseats))
percent5tot <- unique(percent5tot)
percent5 <- merge(percent5num, percent5tot, by = "legislative_id")
percent5$percent5 <- percent5$num5/percent5$totseats*100
percent5 <- subset(percent5, select = c(legislative_id, percent5))

percent10num <- aggregate(legislatefinal$percent10a, by = list(legislatefinal$legislative_id), FUN = sum) #Add margins less than 10% by legislature
names(percent10num) <- c("legislative_id", "num10")
percent10num <- data.frame(percent10num)
percent10tot <- subset(legislatefinal, select = c(legislative_id, totseats))
percent10tot <- unique(percent10tot)
percent10 <- merge(percent10num, percent10tot, by = "legislative_id")
percent10$percent10 <- percent10$num10/percent10$totseats*100
percent10 <- subset(percent10, select = c(legislative_id, percent10))


percent15num <- aggregate(legislatefinal$percent15a, by = list(legislatefinal$legislative_id), FUN = sum) #Add margins less than 15% by legislature
names(percent15num) <- c("legislative_id", "num15")
percent15num <- data.frame(percent15num)
percent15tot <- subset(legislatefinal, select = c(legislative_id, totseats))
percent15tot <- unique(percent15tot)
percent15 <- merge(percent15num, percent15tot, by = "legislative_id")
percent15$percent15 <- percent15$num15/percent15$totseats*100
percent15 <- subset(percent15, select = c(legislative_id, percent15))


legislatefinal <- merge(legislatefinal, percent5, by = "legislative_id") #Combine summed margins and original data
legislatefinal <- merge(legislatefinal, percent10, by = "legislative_id")
legislatefinal <- merge(legislatefinal, percent15, by = "legislative_id")

legislatefinal <- subset(legislatefinal, select = -c(percent5a, percent10a, percent15a)) #Remove uncessary variables

write.csv(legislatefinal, "Final Election and Partisan Domination Variables.csv") #Write new dataset




# REPLICATION OF ABDUL-RAZZAK ET AL. ELECTORAL OUTCOMES -------------------

legislate <- leganalysis

legislate$banstate <- ifelse(legislate$state == "WA" | legislate$state == "OR" |legislate$state == "ID" |legislate$state == "CA" |legislate$state == "NV" |legislate$state == "UT" |legislate$state == "NM" |legislate$state == "NE" |legislate$state == "KS" | legislate$state == "MO" |legislate$state == "AR" |legislate$state == "LA" |legislate$state == "IL" |legislate$state == "IN" | legislate$state == "MS" |legislate$state == "AL" |legislate$state == "GA" |legislate$state == "SC" |legislate$state == "FL" |legislate$state == "VA" |legislate$state == "MD" |legislate$state == "DE" |legislate$state == "NJ" |legislate$state == "NY" |legislate$state == "VT" |legislate$state == "ME"| legislate$state == "HI", 0, 1)
legislate$deepsouth <- ifelse(legislate$state == "AL" | legislate$state == "GA" | legislate$state == "MS" | legislate$state == "SC" | legislate$state == "FL", 1, 0)
legislate$postcit <- ifelse(legislate$year >= 2010, 1, 0) 
legislate <- droplevels(subset(legislate, state != "NE" & state != "LA"))


legislate$newchamber <- ifelse(legislate$legyear - 1 == legislate$year, 1, 0)


repseats <- subset(legislate, electionkind == "G" | electionkind == "SSG") #Remove irrelevant election data
repseats <- subset(repseats, !duplicated(election_id))
repseats <- subset(repseats, year >= 1990)


repseats$interaction <- repseats$postcit*repseats$banstate

lower <- subset(repseats, seat == "House") #Count number of elections for Senate and House
nrow(lower)
upper <- subset(repseats, seat == "Senate")
nrow(upper)

library(lfe)

fixedlower <- felm(Rseats ~ banstate:postcit + G(state) + G(year), data = lower, cluster = lower$state) #Run replication analyses (ignore warnings)
summary(fixedlower)

fixedupper <- felm(Rseats ~ banstate:postcit + G(state) + G(year), data = upper, cluster = upper$state)
summary(fixedupper)


fixedlower <- felm(Rvotes ~ banstate:postcit + G(state) + G(year), data = lower, cluster = lower$state)
summary(fixedlower)

fixedupper <- felm(PRvotes ~ banstate:postcit + G(state) + G(year), data = upper, cluster = upper$state)
summary(fixedupper)




fixedlower <- felm(Rseats ~ banstate:postcit + G(state) + G(year) + deepsouth:year, data = lower, cluster = lower$state)
summary(fixedlower)

fixedupper <- felm(Rseats ~ banstate:postcit + G(state) + G(year) + deepsouth:year, data = upper, cluster = upper$state)
summary(fixedupper)


fixedlower <- felm(Rvotes ~ banstate:postcit + G(state) + G(year) + deepsouth:year, data = lower, cluster = lower$state)
summary(fixedlower)

fixedupper <- felm(Rvotes ~ banstate:postcit + G(state) + G(year) + deepsouth:year, data = upper, cluster = upper$state)
summary(fixedupper)






fixedlower <- felm(Rseats ~ banstate:postcit + G(state) + G(year) + state:year, data = lower, cluster = lower$state)
summary(fixedlower)

fixedupper <- felm(Rseats ~ banstate:postcit + G(state) + G(year) + state:year, data = upper, cluster = upper$state)
summary(fixedupper)


fixedlower <- felm(Rvotes ~ banstate:postcit + G(state) + G(year) +  state:year, data = lower, cluster = lower$state)
summary(fixedlower)

fixedupper <- felm(Rvotes ~ banstate:postcit + G(state) + G(year) +  state:year, data = upper, cluster = upper$state)
summary(fixedupper)

