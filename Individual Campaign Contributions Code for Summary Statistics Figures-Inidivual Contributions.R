# CALL LIBRARIES AND SET WORKING DIRECTORY----------------------------------------------------------

library(foreign)
library(psych)
library(dplyr)
library(readstata13)
library(plyr)
library(doBy)

setwd("~/Desktop/1992 to 2015_Contribution Files/Contribution Project/PH Contributions/Final Datasets") #Set working directory



# READ IN ORINGAL DATA ------------------------------------------------------------

setwd("~/Desktop/1992 to 2015_Contribution Files/Contribution Project/PH Contributions/Final Datasets") #Set working directory

year92 <- read.dta("FINAL_1992.dta") #Read in each year of data separately
year94 <- read.dta("FINAL_1994.dta")
year95 <- read.dta("FINAL_1995.dta")
year96 <- read.dta("FINAL_1996.dta")
year97 <- read.dta("FINAL_1997.dta")
year98 <- read.dta("FINAL_1998.dta")
year99 <- read.dta("FINAL_1999.dta")
year00 <- read.dta("FINAL_2000.dta")
year01 <- read.dta("FINAL_2001.dta")
year02 <- read.dta("FINAL_2002.dta")
year03 <- read.dta("FINAL_2003.dta")
year04 <- read.dta("FINAL_2004.dta")
year05 <- read.dta("FINAL_2005.dta")
year06 <- read.dta("FINAL_2006.dta")
year07 <- read.dta("FINAL_2007.dta")
year08 <- read.dta("FINAL_2008.dta")
year09 <- read.dta("FINAL_2009.dta")
year10 <- read.dta("FINAL_2010.dta")
year11 <- read.dta("FINAL_2011.dta")
year12 <- read.dta("FINAL_2012.dta")
year13 <- read.dta("FINAL_2013.dta")
year14 <- read.dta("FINAL_2014.dta")
year15 <- read.dta("FINAL_2015.dta")




# COMBINE AND SEPARATE DATA BY YEAR ---------------------------------------



year92 <- subset(year92, select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year94 <- subset(year94, select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year95 <- subset(year95, select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year96 <- subset(year96, select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year97 <- subset(year97, select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year98 <- subset(year98, select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year99 <- subset(year99, select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year00 <- subset(year00, select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year01 <- subset(year01, select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year02 <- subset(year02, select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year03 <- subset(year03, select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year04 <- subset(year04, select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year05 <- subset(year05, select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year06 <- subset(year06, select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year07 <- subset(year07, select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year08 <- subset(year08, select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year09 <- subset(year09, select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year10 <- subset(year10, select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year11 <- subset(year11, select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year12 <- subset(year12, select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year13 <- subset(year13, select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year14 <- subset(year14, select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year15 <- subset(year15, select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))

all <- rbind(year92, year94, year95, year96, year97, year98, year99, year00, year01, year02, year03, year04, year05, year06, year07, year08, year09, year10, year11, year12, year13, year14, year15)
all$amount <- as.numeric(all$amount)

year92 <- subset(all, cycle2 == 1992, select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year94 <- subset(all, cycle2 == 1994,  select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year95 <- subset(all, cycle2 == 1995,  select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year96 <- subset(all, cycle2 == 1996,  select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year97 <- subset(all, cycle2 == 1997,  select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year98 <- subset(all, cycle2 == 1998,  select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year99 <- subset(all, cycle2 == 1999,  select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year00 <- subset(all, cycle2 == 2000,  select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year01 <- subset(all, cycle2 == 2001,  select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year02 <- subset(all, cycle2 == 2002,  select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year03 <- subset(all, cycle2 == 2003,  select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year04 <- subset(all, cycle2 == 2004,  select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year05 <- subset(all, cycle2 == 2005,  select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year06 <- subset(all, cycle2 == 2006,  select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year07 <- subset(all, cycle2 == 2007,  select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year08 <- subset(all, cycle2 == 2008,  select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year09 <- subset(all, cycle2 == 2009,  select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year10 <- subset(all, cycle2 == 2010,  select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year11 <- subset(all, cycle2 == 2011,  select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year12 <- subset(all, cycle2 == 2012,  select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year13 <- subset(all, cycle2 == 2013,  select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year14 <- subset(all, cycle2 == 2014,  select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))
year15 <- subset(all, cycle2 == 2015,  select = c("amount", "new_catcode2", "contributor_type", "contributor_category", "cycle",  "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party", "Gilens_contributoreid", "recipienteid", "election_type"))



# CLEAN YEAR 92 ---------------------------------------------------------

year92.agg <- year92

year92.ind <- subset(year92, contributor_type == "Individual" | contributor_type == "Self")
year92.oth <- subset(year92, contributor_type == "Non-Individual" | contributor_type == "Other")

year92.agg.ind0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type, year92.ind, FUN = sum)
year92.agg.ind1 <- aggregate(new_catcode2 ~ Gilens_contributoreid + recipienteid + election_type, year92.ind, head, n = 1)
year92.agg.ind2 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type, year92.ind, head, n = 1)
year92.agg.ind3 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type, year92.ind, head, n = 1)
year92.agg.ind4 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type, year92.ind, head, n = 1)
year92.agg.ind5 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type, year92.ind, head, n = 1)
year92.agg.ind6 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type, year92.ind, head, n = 1)
year92.agg.ind7 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type, year92.ind, head, n = 1)
year92.agg.ind8 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type, year92.ind, head, n = 1)
year92.agg.ind9 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type, year92.ind, head, n = 1)
year92.agg.ind10 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type, year92.ind, head, n = 1)
year92.agg.ind11 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type, year92.ind, head, n = 1)
year92.agg.ind12 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type, year92.ind, head, n = 1)
year92.agg.ind <- cbind(year92.agg.ind0 , year92.agg.ind1[,4], year92.agg.ind2[,4], year92.agg.ind3[,4], year92.agg.ind4[,4], year92.agg.ind5[,4], year92.agg.ind6[,4], year92.agg.ind7[,4], year92.agg.ind8[,4], year92.agg.ind9[,4], year92.agg.ind10[,4], year92.agg.ind11[,4], year92.agg.ind12[,4])
names(year92.agg.ind) <- c("Gilens_contributoreid", "recipienteid", "election_type", "amount", "new_catcode2", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
year92.agg.ind <- year92.agg.ind[, c(1, 2, 3, 5, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)]
year92.agg.ind$new_catcode2 <- -9
head(year92.agg.ind)

year92.agg.oth0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year92.oth, FUN = sum)
year92.agg.oth1 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year92.oth, head, n = 1)
year92.agg.oth2 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year92.oth, head, n = 1)
year92.agg.oth3 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year92.oth, head, n = 1)
year92.agg.oth4 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year92.oth, head, n = 1)
year92.agg.oth5 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year92.oth, head, n = 1)
year92.agg.oth6 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year92.oth, head, n = 1)
year92.agg.oth7 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year92.oth, head, n = 1)
year92.agg.oth8 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year92.oth, head, n = 1)
year92.agg.oth9 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year92.oth, head, n = 1)
year92.agg.oth10 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year92.oth, head, n = 1)
year92.agg.oth11 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year92.oth, head, n = 1)
year92.agg.oth <- cbind(year92.agg.oth0 , year92.agg.oth1[,5], year92.agg.oth2[,5], year92.agg.oth3[,5], year92.agg.oth4[,5], year92.agg.oth5[,5], year92.agg.oth6[,5], year92.agg.oth7[,5], year92.agg.oth8[,5], year92.agg.oth9[,5], year92.agg.oth10[,5], year92.agg.oth11[,5])
names(year92.agg.oth) <- c("Gilens_contributoreid", "recipienteid", "election_type", "new_catcode2", "amount", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
head(year92.agg.oth)

year92.agg <- rbind(year92.agg.oth, year92.agg.ind)

year92.agg$totcat0 <- ifelse(year92.agg$new_catcode == 0, year92.agg$amount, 0)
year92.agg$totcat1 <- ifelse(year92.agg$new_catcode == 1, year92.agg$amount, 0)
year92.agg$totcat2 <- ifelse(year92.agg$new_catcode == 2, year92.agg$amount, 0)
year92.agg$totcat3 <- ifelse(year92.agg$new_catcode == 3, year92.agg$amount, 0)
year92.agg$totcat4 <- ifelse(year92.agg$new_catcode == 4, year92.agg$amount, 0)
year92.agg$totcat5 <- ifelse(year92.agg$new_catcode == 5, year92.agg$amount, 0)
year92.agg$totcat6 <- ifelse(year92.agg$new_catcode == 6, year92.agg$amount, 0)
year92.agg$totcat7 <- ifelse(year92.agg$new_catcode == 7, year92.agg$amount, 0)
year92.agg$totcat8 <- ifelse(year92.agg$new_catcode == 8, year92.agg$amount, 0)
year92.agg$totcat9 <- ifelse(year92.agg$new_catcode == 9, year92.agg$amount, 0)
year92.agg$totcat10 <- ifelse(year92.agg$new_catcode == 10, year92.agg$amount, 0)
year92.agg$totcat11 <- ifelse(year92.agg$new_catcode == 11, year92.agg$amount, 0)
year92.agg$totcat12 <- ifelse(year92.agg$new_catcode == 12, year92.agg$amount, 0)
year92.agg$totcat13 <- ifelse(year92.agg$new_catcode == 13, year92.agg$amount, 0)
year92.agg$totcat14 <- ifelse(year92.agg$new_catcode == 14, year92.agg$amount, 0)
year92.agg$less100 <- ifelse(year92.agg$contributor_type == "Individual" & (year92.agg$amount > 0 & year92.agg$amount <= 100), year92.agg$amount, 0)
year92.agg$btw100500<- ifelse(year92.agg$contributor_type == "Individual" & (year92.agg$amount > 100 & year92.agg$amount <= 500), year92.agg$amount, 0)
year92.agg$btw5001000<- ifelse(year92.agg$contributor_type == "Individual" & (year92.agg$amount > 500 & year92.agg$amount <= 1000), year92.agg$amount, 0)
year92.agg$btw100010000 <- ifelse(year92.agg$contributor_type == "Individual" & (year92.agg$amount > 1000 & year92.agg$amount <=10000), year92.agg$amount, 0)
year92.agg$grt10000 <- ifelse(year92.agg$contributor_type == "Individual" & (year92.agg$amount > 10000), year92.agg$amount, 0)
year92.agg$totself <- ifelse(year92.agg$contributor_type == "Self", year92.agg$amount, 0)

head(year92.agg)



# CLEAN YEAR 94 ---------------------------------------------------------

year94.agg <- year94

year94.ind <- subset(year94, contributor_type == "Individual" | contributor_type == "Self")
year94.oth <- subset(year94, contributor_type == "Non-Individual" | contributor_type == "Other")

year94.agg.ind0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type, year94.ind, FUN = sum)
year94.agg.ind1 <- aggregate(new_catcode2 ~ Gilens_contributoreid + recipienteid + election_type, year94.ind, head, n = 1)
year94.agg.ind2 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type, year94.ind, head, n = 1)
year94.agg.ind3 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type, year94.ind, head, n = 1)
year94.agg.ind4 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type, year94.ind, head, n = 1)
year94.agg.ind5 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type, year94.ind, head, n = 1)
year94.agg.ind6 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type, year94.ind, head, n = 1)
year94.agg.ind7 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type, year94.ind, head, n = 1)
year94.agg.ind8 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type, year94.ind, head, n = 1)
year94.agg.ind9 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type, year94.ind, head, n = 1)
year94.agg.ind10 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type, year94.ind, head, n = 1)
year94.agg.ind11 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type, year94.ind, head, n = 1)
year94.agg.ind12 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type, year94.ind, head, n = 1)
year94.agg.ind <- cbind(year94.agg.ind0 , year94.agg.ind1[,4], year94.agg.ind2[,4], year94.agg.ind3[,4], year94.agg.ind4[,4], year94.agg.ind5[,4], year94.agg.ind6[,4], year94.agg.ind7[,4], year94.agg.ind8[,4], year94.agg.ind9[,4], year94.agg.ind10[,4], year94.agg.ind11[,4], year94.agg.ind12[,4])
names(year94.agg.ind) <- c("Gilens_contributoreid", "recipienteid", "election_type", "amount", "new_catcode2", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
year94.agg.ind <- year94.agg.ind[, c(1, 2, 3, 5, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)]
year94.agg.ind$new_catcode2 <- -9
head(year94.agg.ind)

year94.agg.oth0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year94.oth, FUN = sum)
year94.agg.oth1 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year94.oth, head, n = 1)
year94.agg.oth2 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year94.oth, head, n = 1)
year94.agg.oth3 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year94.oth, head, n = 1)
year94.agg.oth4 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year94.oth, head, n = 1)
year94.agg.oth5 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year94.oth, head, n = 1)
year94.agg.oth6 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year94.oth, head, n = 1)
year94.agg.oth7 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year94.oth, head, n = 1)
year94.agg.oth8 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year94.oth, head, n = 1)
year94.agg.oth9 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year94.oth, head, n = 1)
year94.agg.oth10 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year94.oth, head, n = 1)
year94.agg.oth11 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year94.oth, head, n = 1)
year94.agg.oth <- cbind(year94.agg.oth0 , year94.agg.oth1[,5], year94.agg.oth2[,5], year94.agg.oth3[,5], year94.agg.oth4[,5], year94.agg.oth5[,5], year94.agg.oth6[,5], year94.agg.oth7[,5], year94.agg.oth8[,5], year94.agg.oth9[,5], year94.agg.oth10[,5], year94.agg.oth11[,5])
names(year94.agg.oth) <- c("Gilens_contributoreid", "recipienteid", "election_type", "new_catcode2", "amount", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
head(year94.agg.oth)

year94.agg <- rbind(year94.agg.oth, year94.agg.ind)

year94.agg$totcat0 <- ifelse(year94.agg$new_catcode == 0, year94.agg$amount, 0)
year94.agg$totcat1 <- ifelse(year94.agg$new_catcode == 1, year94.agg$amount, 0)
year94.agg$totcat2 <- ifelse(year94.agg$new_catcode == 2, year94.agg$amount, 0)
year94.agg$totcat3 <- ifelse(year94.agg$new_catcode == 3, year94.agg$amount, 0)
year94.agg$totcat4 <- ifelse(year94.agg$new_catcode == 4, year94.agg$amount, 0)
year94.agg$totcat5 <- ifelse(year94.agg$new_catcode == 5, year94.agg$amount, 0)
year94.agg$totcat6 <- ifelse(year94.agg$new_catcode == 6, year94.agg$amount, 0)
year94.agg$totcat7 <- ifelse(year94.agg$new_catcode == 7, year94.agg$amount, 0)
year94.agg$totcat8 <- ifelse(year94.agg$new_catcode == 8, year94.agg$amount, 0)
year94.agg$totcat9 <- ifelse(year94.agg$new_catcode == 9, year94.agg$amount, 0)
year94.agg$totcat10 <- ifelse(year94.agg$new_catcode == 10, year94.agg$amount, 0)
year94.agg$totcat11 <- ifelse(year94.agg$new_catcode == 11, year94.agg$amount, 0)
year94.agg$totcat12 <- ifelse(year94.agg$new_catcode == 12, year94.agg$amount, 0)
year94.agg$totcat13 <- ifelse(year94.agg$new_catcode == 13, year94.agg$amount, 0)
year94.agg$totcat14 <- ifelse(year94.agg$new_catcode == 14, year94.agg$amount, 0)
year94.agg$less100 <- ifelse(year94.agg$contributor_type == "Individual" & (year94.agg$amount > 0 & year94.agg$amount <= 100), year94.agg$amount, 0)
year94.agg$btw100500<- ifelse(year94.agg$contributor_type == "Individual" & (year94.agg$amount > 100 & year94.agg$amount <= 500), year94.agg$amount, 0)
year94.agg$btw5001000<- ifelse(year94.agg$contributor_type == "Individual" & (year94.agg$amount > 500 & year94.agg$amount <= 1000), year94.agg$amount, 0)
year94.agg$btw100010000 <- ifelse(year94.agg$contributor_type == "Individual" & (year94.agg$amount > 1000 & year94.agg$amount <=10000), year94.agg$amount, 0)
year94.agg$grt10000 <- ifelse(year94.agg$contributor_type == "Individual" & (year94.agg$amount > 10000), year94.agg$amount, 0)
year94.agg$totself <- ifelse(year94.agg$contributor_type == "Self", year94.agg$amount, 0)

head(year94.agg)



# CLEAN YEAR 95 ---------------------------------------------------------

year95.agg <- year95

year95.ind <- subset(year95, contributor_type == "Individual" | contributor_type == "Self")
year95.oth <- subset(year95, contributor_type == "Non-Individual" | contributor_type == "Other")

year95.agg.ind0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type, year95.ind, FUN = sum)
year95.agg.ind1 <- aggregate(new_catcode2 ~ Gilens_contributoreid + recipienteid + election_type, year95.ind, head, n = 1)
year95.agg.ind2 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type, year95.ind, head, n = 1)
year95.agg.ind3 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type, year95.ind, head, n = 1)
year95.agg.ind4 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type, year95.ind, head, n = 1)
year95.agg.ind5 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type, year95.ind, head, n = 1)
year95.agg.ind6 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type, year95.ind, head, n = 1)
year95.agg.ind7 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type, year95.ind, head, n = 1)
year95.agg.ind8 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type, year95.ind, head, n = 1)
year95.agg.ind9 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type, year95.ind, head, n = 1)
year95.agg.ind10 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type, year95.ind, head, n = 1)
year95.agg.ind11 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type, year95.ind, head, n = 1)
year95.agg.ind12 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type, year95.ind, head, n = 1)
year95.agg.ind <- cbind(year95.agg.ind0 , year95.agg.ind1[,4], year95.agg.ind2[,4], year95.agg.ind3[,4], year95.agg.ind4[,4], year95.agg.ind5[,4], year95.agg.ind6[,4], year95.agg.ind7[,4], year95.agg.ind8[,4], year95.agg.ind9[,4], year95.agg.ind10[,4], year95.agg.ind11[,4], year95.agg.ind12[,4])
names(year95.agg.ind) <- c("Gilens_contributoreid", "recipienteid", "election_type", "amount", "new_catcode2", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
year95.agg.ind <- year95.agg.ind[, c(1, 2, 3, 5, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)]
year95.agg.ind$new_catcode2 <- -9
head(year95.agg.ind)

year95.agg.oth0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year95.oth, FUN = sum)
year95.agg.oth1 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year95.oth, head, n = 1)
year95.agg.oth2 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year95.oth, head, n = 1)
year95.agg.oth3 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year95.oth, head, n = 1)
year95.agg.oth4 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year95.oth, head, n = 1)
year95.agg.oth5 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year95.oth, head, n = 1)
year95.agg.oth6 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year95.oth, head, n = 1)
year95.agg.oth7 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year95.oth, head, n = 1)
year95.agg.oth8 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year95.oth, head, n = 1)
year95.agg.oth9 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year95.oth, head, n = 1)
year95.agg.oth10 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year95.oth, head, n = 1)
year95.agg.oth11 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year95.oth, head, n = 1)
year95.agg.oth <- cbind(year95.agg.oth0 , year95.agg.oth1[,5], year95.agg.oth2[,5], year95.agg.oth3[,5], year95.agg.oth4[,5], year95.agg.oth5[,5], year95.agg.oth6[,5], year95.agg.oth7[,5], year95.agg.oth8[,5], year95.agg.oth9[,5], year95.agg.oth10[,5], year95.agg.oth11[,5])
names(year95.agg.oth) <- c("Gilens_contributoreid", "recipienteid", "election_type", "new_catcode2", "amount", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
head(year95.agg.oth)

year95.agg <- rbind(year95.agg.oth, year95.agg.ind)

year95.agg$totcat0 <- ifelse(year95.agg$new_catcode == 0, year95.agg$amount, 0)
year95.agg$totcat1 <- ifelse(year95.agg$new_catcode == 1, year95.agg$amount, 0)
year95.agg$totcat2 <- ifelse(year95.agg$new_catcode == 2, year95.agg$amount, 0)
year95.agg$totcat3 <- ifelse(year95.agg$new_catcode == 3, year95.agg$amount, 0)
year95.agg$totcat4 <- ifelse(year95.agg$new_catcode == 4, year95.agg$amount, 0)
year95.agg$totcat5 <- ifelse(year95.agg$new_catcode == 5, year95.agg$amount, 0)
year95.agg$totcat6 <- ifelse(year95.agg$new_catcode == 6, year95.agg$amount, 0)
year95.agg$totcat7 <- ifelse(year95.agg$new_catcode == 7, year95.agg$amount, 0)
year95.agg$totcat8 <- ifelse(year95.agg$new_catcode == 8, year95.agg$amount, 0)
year95.agg$totcat9 <- ifelse(year95.agg$new_catcode == 9, year95.agg$amount, 0)
year95.agg$totcat10 <- ifelse(year95.agg$new_catcode == 10, year95.agg$amount, 0)
year95.agg$totcat11 <- ifelse(year95.agg$new_catcode == 11, year95.agg$amount, 0)
year95.agg$totcat12 <- ifelse(year95.agg$new_catcode == 12, year95.agg$amount, 0)
year95.agg$totcat13 <- ifelse(year95.agg$new_catcode == 13, year95.agg$amount, 0)
year95.agg$totcat14 <- ifelse(year95.agg$new_catcode == 14, year95.agg$amount, 0)
year95.agg$less100 <- ifelse(year95.agg$contributor_type == "Individual" & (year95.agg$amount > 0 & year95.agg$amount <= 100), year95.agg$amount, 0)
year95.agg$btw100500<- ifelse(year95.agg$contributor_type == "Individual" & (year95.agg$amount > 100 & year95.agg$amount <= 500), year95.agg$amount, 0)
year95.agg$btw5001000<- ifelse(year95.agg$contributor_type == "Individual" & (year95.agg$amount > 500 & year95.agg$amount <= 1000), year95.agg$amount, 0)
year95.agg$btw100010000 <- ifelse(year95.agg$contributor_type == "Individual" & (year95.agg$amount > 1000 & year95.agg$amount <=10000), year95.agg$amount, 0)
year95.agg$grt10000 <- ifelse(year95.agg$contributor_type == "Individual" & (year95.agg$amount > 10000), year95.agg$amount, 0)
year95.agg$totself <- ifelse(year95.agg$contributor_type == "Self", year95.agg$amount, 0)

head(year95.agg)



# CLEAN YEAR 96 ---------------------------------------------------------

year96.agg <- year96

year96.ind <- subset(year96, contributor_type == "Individual" | contributor_type == "Self")
year96.oth <- subset(year96, contributor_type == "Non-Individual" | contributor_type == "Other")

year96.agg.ind0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type, year96.ind, FUN = sum)
year96.agg.ind1 <- aggregate(new_catcode2 ~ Gilens_contributoreid + recipienteid + election_type, year96.ind, head, n = 1)
year96.agg.ind2 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type, year96.ind, head, n = 1)
year96.agg.ind3 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type, year96.ind, head, n = 1)
year96.agg.ind4 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type, year96.ind, head, n = 1)
year96.agg.ind5 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type, year96.ind, head, n = 1)
year96.agg.ind6 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type, year96.ind, head, n = 1)
year96.agg.ind7 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type, year96.ind, head, n = 1)
year96.agg.ind8 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type, year96.ind, head, n = 1)
year96.agg.ind9 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type, year96.ind, head, n = 1)
year96.agg.ind10 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type, year96.ind, head, n = 1)
year96.agg.ind11 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type, year96.ind, head, n = 1)
year96.agg.ind12 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type, year96.ind, head, n = 1)
year96.agg.ind <- cbind(year96.agg.ind0 , year96.agg.ind1[,4], year96.agg.ind2[,4], year96.agg.ind3[,4], year96.agg.ind4[,4], year96.agg.ind5[,4], year96.agg.ind6[,4], year96.agg.ind7[,4], year96.agg.ind8[,4], year96.agg.ind9[,4], year96.agg.ind10[,4], year96.agg.ind11[,4], year96.agg.ind12[,4])
names(year96.agg.ind) <- c("Gilens_contributoreid", "recipienteid", "election_type", "amount", "new_catcode2", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
year96.agg.ind <- year96.agg.ind[, c(1, 2, 3, 5, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)]
year96.agg.ind$new_catcode2 <- -9
head(year96.agg.ind)

year96.agg.oth0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year96.oth, FUN = sum)
year96.agg.oth1 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year96.oth, head, n = 1)
year96.agg.oth2 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year96.oth, head, n = 1)
year96.agg.oth3 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year96.oth, head, n = 1)
year96.agg.oth4 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year96.oth, head, n = 1)
year96.agg.oth5 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year96.oth, head, n = 1)
year96.agg.oth6 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year96.oth, head, n = 1)
year96.agg.oth7 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year96.oth, head, n = 1)
year96.agg.oth8 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year96.oth, head, n = 1)
year96.agg.oth9 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year96.oth, head, n = 1)
year96.agg.oth10 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year96.oth, head, n = 1)
year96.agg.oth11 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year96.oth, head, n = 1)
year96.agg.oth <- cbind(year96.agg.oth0 , year96.agg.oth1[,5], year96.agg.oth2[,5], year96.agg.oth3[,5], year96.agg.oth4[,5], year96.agg.oth5[,5], year96.agg.oth6[,5], year96.agg.oth7[,5], year96.agg.oth8[,5], year96.agg.oth9[,5], year96.agg.oth10[,5], year96.agg.oth11[,5])
names(year96.agg.oth) <- c("Gilens_contributoreid", "recipienteid", "election_type", "new_catcode2", "amount", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
head(year96.agg.oth)

year96.agg <- rbind(year96.agg.oth, year96.agg.ind)

year96.agg$totcat0 <- ifelse(year96.agg$new_catcode == 0, year96.agg$amount, 0)
year96.agg$totcat1 <- ifelse(year96.agg$new_catcode == 1, year96.agg$amount, 0)
year96.agg$totcat2 <- ifelse(year96.agg$new_catcode == 2, year96.agg$amount, 0)
year96.agg$totcat3 <- ifelse(year96.agg$new_catcode == 3, year96.agg$amount, 0)
year96.agg$totcat4 <- ifelse(year96.agg$new_catcode == 4, year96.agg$amount, 0)
year96.agg$totcat5 <- ifelse(year96.agg$new_catcode == 5, year96.agg$amount, 0)
year96.agg$totcat6 <- ifelse(year96.agg$new_catcode == 6, year96.agg$amount, 0)
year96.agg$totcat7 <- ifelse(year96.agg$new_catcode == 7, year96.agg$amount, 0)
year96.agg$totcat8 <- ifelse(year96.agg$new_catcode == 8, year96.agg$amount, 0)
year96.agg$totcat9 <- ifelse(year96.agg$new_catcode == 9, year96.agg$amount, 0)
year96.agg$totcat10 <- ifelse(year96.agg$new_catcode == 10, year96.agg$amount, 0)
year96.agg$totcat11 <- ifelse(year96.agg$new_catcode == 11, year96.agg$amount, 0)
year96.agg$totcat12 <- ifelse(year96.agg$new_catcode == 12, year96.agg$amount, 0)
year96.agg$totcat13 <- ifelse(year96.agg$new_catcode == 13, year96.agg$amount, 0)
year96.agg$totcat14 <- ifelse(year96.agg$new_catcode == 14, year96.agg$amount, 0)
year96.agg$less100 <- ifelse(year96.agg$contributor_type == "Individual" & (year96.agg$amount > 0 & year96.agg$amount <= 100), year96.agg$amount, 0)
year96.agg$btw100500<- ifelse(year96.agg$contributor_type == "Individual" & (year96.agg$amount > 100 & year96.agg$amount <= 500), year96.agg$amount, 0)
year96.agg$btw5001000<- ifelse(year96.agg$contributor_type == "Individual" & (year96.agg$amount > 500 & year96.agg$amount <= 1000), year96.agg$amount, 0)
year96.agg$btw100010000 <- ifelse(year96.agg$contributor_type == "Individual" & (year96.agg$amount > 1000 & year96.agg$amount <=10000), year96.agg$amount, 0)
year96.agg$grt10000 <- ifelse(year96.agg$contributor_type == "Individual" & (year96.agg$amount > 10000), year96.agg$amount, 0)
year96.agg$totself <- ifelse(year96.agg$contributor_type == "Self", year96.agg$amount, 0)

head(year96.agg)



# CLEAN YEAR 97 ---------------------------------------------------------

year97.agg <- year97

year97.ind <- subset(year97, contributor_type == "Individual" | contributor_type == "Self")
year97.oth <- subset(year97, contributor_type == "Non-Individual" | contributor_type == "Other")

year97.agg.ind0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type, year97.ind, FUN = sum)
year97.agg.ind1 <- aggregate(new_catcode2 ~ Gilens_contributoreid + recipienteid + election_type, year97.ind, head, n = 1)
year97.agg.ind2 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type, year97.ind, head, n = 1)
year97.agg.ind3 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type, year97.ind, head, n = 1)
year97.agg.ind4 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type, year97.ind, head, n = 1)
year97.agg.ind5 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type, year97.ind, head, n = 1)
year97.agg.ind6 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type, year97.ind, head, n = 1)
year97.agg.ind7 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type, year97.ind, head, n = 1)
year97.agg.ind8 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type, year97.ind, head, n = 1)
year97.agg.ind9 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type, year97.ind, head, n = 1)
year97.agg.ind10 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type, year97.ind, head, n = 1)
year97.agg.ind11 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type, year97.ind, head, n = 1)
year97.agg.ind12 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type, year97.ind, head, n = 1)
year97.agg.ind <- cbind(year97.agg.ind0 , year97.agg.ind1[,4], year97.agg.ind2[,4], year97.agg.ind3[,4], year97.agg.ind4[,4], year97.agg.ind5[,4], year97.agg.ind6[,4], year97.agg.ind7[,4], year97.agg.ind8[,4], year97.agg.ind9[,4], year97.agg.ind10[,4], year97.agg.ind11[,4], year97.agg.ind12[,4])
names(year97.agg.ind) <- c("Gilens_contributoreid", "recipienteid", "election_type", "amount", "new_catcode2", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
year97.agg.ind <- year97.agg.ind[, c(1, 2, 3, 5, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)]
year97.agg.ind$new_catcode2 <- -9
head(year97.agg.ind)

year97.agg.oth0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year97.oth, FUN = sum)
year97.agg.oth1 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year97.oth, head, n = 1)
year97.agg.oth2 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year97.oth, head, n = 1)
year97.agg.oth3 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year97.oth, head, n = 1)
year97.agg.oth4 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year97.oth, head, n = 1)
year97.agg.oth5 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year97.oth, head, n = 1)
year97.agg.oth6 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year97.oth, head, n = 1)
year97.agg.oth7 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year97.oth, head, n = 1)
year97.agg.oth8 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year97.oth, head, n = 1)
year97.agg.oth9 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year97.oth, head, n = 1)
year97.agg.oth10 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year97.oth, head, n = 1)
year97.agg.oth11 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year97.oth, head, n = 1)
year97.agg.oth <- cbind(year97.agg.oth0 , year97.agg.oth1[,5], year97.agg.oth2[,5], year97.agg.oth3[,5], year97.agg.oth4[,5], year97.agg.oth5[,5], year97.agg.oth6[,5], year97.agg.oth7[,5], year97.agg.oth8[,5], year97.agg.oth9[,5], year97.agg.oth10[,5], year97.agg.oth11[,5])
names(year97.agg.oth) <- c("Gilens_contributoreid", "recipienteid", "election_type", "new_catcode2", "amount", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
head(year97.agg.oth)

year97.agg <- rbind(year97.agg.oth, year97.agg.ind)

year97.agg$totcat0 <- ifelse(year97.agg$new_catcode == 0, year97.agg$amount, 0)
year97.agg$totcat1 <- ifelse(year97.agg$new_catcode == 1, year97.agg$amount, 0)
year97.agg$totcat2 <- ifelse(year97.agg$new_catcode == 2, year97.agg$amount, 0)
year97.agg$totcat3 <- ifelse(year97.agg$new_catcode == 3, year97.agg$amount, 0)
year97.agg$totcat4 <- ifelse(year97.agg$new_catcode == 4, year97.agg$amount, 0)
year97.agg$totcat5 <- ifelse(year97.agg$new_catcode == 5, year97.agg$amount, 0)
year97.agg$totcat6 <- ifelse(year97.agg$new_catcode == 6, year97.agg$amount, 0)
year97.agg$totcat7 <- ifelse(year97.agg$new_catcode == 7, year97.agg$amount, 0)
year97.agg$totcat8 <- ifelse(year97.agg$new_catcode == 8, year97.agg$amount, 0)
year97.agg$totcat9 <- ifelse(year97.agg$new_catcode == 9, year97.agg$amount, 0)
year97.agg$totcat10 <- ifelse(year97.agg$new_catcode == 10, year97.agg$amount, 0)
year97.agg$totcat11 <- ifelse(year97.agg$new_catcode == 11, year97.agg$amount, 0)
year97.agg$totcat12 <- ifelse(year97.agg$new_catcode == 12, year97.agg$amount, 0)
year97.agg$totcat13 <- ifelse(year97.agg$new_catcode == 13, year97.agg$amount, 0)
year97.agg$totcat14 <- ifelse(year97.agg$new_catcode == 14, year97.agg$amount, 0)
year97.agg$less100 <- ifelse(year97.agg$contributor_type == "Individual" & (year97.agg$amount > 0 & year97.agg$amount <= 100), year97.agg$amount, 0)
year97.agg$btw100500<- ifelse(year97.agg$contributor_type == "Individual" & (year97.agg$amount > 100 & year97.agg$amount <= 500), year97.agg$amount, 0)
year97.agg$btw5001000<- ifelse(year97.agg$contributor_type == "Individual" & (year97.agg$amount > 500 & year97.agg$amount <= 1000), year97.agg$amount, 0)
year97.agg$btw100010000 <- ifelse(year97.agg$contributor_type == "Individual" & (year97.agg$amount > 1000 & year97.agg$amount <=10000), year97.agg$amount, 0)
year97.agg$grt10000 <- ifelse(year97.agg$contributor_type == "Individual" & (year97.agg$amount > 10000), year97.agg$amount, 0)
year97.agg$totself <- ifelse(year97.agg$contributor_type == "Self", year97.agg$amount, 0)

head(year97.agg)



# CLEAN YEAR 98 ---------------------------------------------------------

year98.agg <- year98

year98.ind <- subset(year98, contributor_type == "Individual" | contributor_type == "Self")
year98.oth <- subset(year98, contributor_type == "Non-Individual" | contributor_type == "Other")

year98.agg.ind0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type, year98.ind, FUN = sum)
year98.agg.ind1 <- aggregate(new_catcode2 ~ Gilens_contributoreid + recipienteid + election_type, year98.ind, head, n = 1)
year98.agg.ind2 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type, year98.ind, head, n = 1)
year98.agg.ind3 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type, year98.ind, head, n = 1)
year98.agg.ind4 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type, year98.ind, head, n = 1)
year98.agg.ind5 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type, year98.ind, head, n = 1)
year98.agg.ind6 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type, year98.ind, head, n = 1)
year98.agg.ind7 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type, year98.ind, head, n = 1)
year98.agg.ind8 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type, year98.ind, head, n = 1)
year98.agg.ind9 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type, year98.ind, head, n = 1)
year98.agg.ind10 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type, year98.ind, head, n = 1)
year98.agg.ind11 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type, year98.ind, head, n = 1)
year98.agg.ind12 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type, year98.ind, head, n = 1)
year98.agg.ind <- cbind(year98.agg.ind0 , year98.agg.ind1[,4], year98.agg.ind2[,4], year98.agg.ind3[,4], year98.agg.ind4[,4], year98.agg.ind5[,4], year98.agg.ind6[,4], year98.agg.ind7[,4], year98.agg.ind8[,4], year98.agg.ind9[,4], year98.agg.ind10[,4], year98.agg.ind11[,4], year98.agg.ind12[,4])
names(year98.agg.ind) <- c("Gilens_contributoreid", "recipienteid", "election_type", "amount", "new_catcode2", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
year98.agg.ind <- year98.agg.ind[, c(1, 2, 3, 5, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)]
year98.agg.ind$new_catcode2 <- -9
head(year98.agg.ind)

year98.agg.oth0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year98.oth, FUN = sum)
year98.agg.oth1 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year98.oth, head, n = 1)
year98.agg.oth2 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year98.oth, head, n = 1)
year98.agg.oth3 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year98.oth, head, n = 1)
year98.agg.oth4 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year98.oth, head, n = 1)
year98.agg.oth5 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year98.oth, head, n = 1)
year98.agg.oth6 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year98.oth, head, n = 1)
year98.agg.oth7 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year98.oth, head, n = 1)
year98.agg.oth8 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year98.oth, head, n = 1)
year98.agg.oth9 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year98.oth, head, n = 1)
year98.agg.oth10 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year98.oth, head, n = 1)
year98.agg.oth11 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year98.oth, head, n = 1)
year98.agg.oth <- cbind(year98.agg.oth0 , year98.agg.oth1[,5], year98.agg.oth2[,5], year98.agg.oth3[,5], year98.agg.oth4[,5], year98.agg.oth5[,5], year98.agg.oth6[,5], year98.agg.oth7[,5], year98.agg.oth8[,5], year98.agg.oth9[,5], year98.agg.oth10[,5], year98.agg.oth11[,5])
names(year98.agg.oth) <- c("Gilens_contributoreid", "recipienteid", "election_type", "new_catcode2", "amount", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
head(year98.agg.oth)

year98.agg <- rbind(year98.agg.oth, year98.agg.ind)

year98.agg$totcat0 <- ifelse(year98.agg$new_catcode == 0, year98.agg$amount, 0)
year98.agg$totcat1 <- ifelse(year98.agg$new_catcode == 1, year98.agg$amount, 0)
year98.agg$totcat2 <- ifelse(year98.agg$new_catcode == 2, year98.agg$amount, 0)
year98.agg$totcat3 <- ifelse(year98.agg$new_catcode == 3, year98.agg$amount, 0)
year98.agg$totcat4 <- ifelse(year98.agg$new_catcode == 4, year98.agg$amount, 0)
year98.agg$totcat5 <- ifelse(year98.agg$new_catcode == 5, year98.agg$amount, 0)
year98.agg$totcat6 <- ifelse(year98.agg$new_catcode == 6, year98.agg$amount, 0)
year98.agg$totcat7 <- ifelse(year98.agg$new_catcode == 7, year98.agg$amount, 0)
year98.agg$totcat8 <- ifelse(year98.agg$new_catcode == 8, year98.agg$amount, 0)
year98.agg$totcat9 <- ifelse(year98.agg$new_catcode == 9, year98.agg$amount, 0)
year98.agg$totcat10 <- ifelse(year98.agg$new_catcode == 10, year98.agg$amount, 0)
year98.agg$totcat11 <- ifelse(year98.agg$new_catcode == 11, year98.agg$amount, 0)
year98.agg$totcat12 <- ifelse(year98.agg$new_catcode == 12, year98.agg$amount, 0)
year98.agg$totcat13 <- ifelse(year98.agg$new_catcode == 13, year98.agg$amount, 0)
year98.agg$totcat14 <- ifelse(year98.agg$new_catcode == 14, year98.agg$amount, 0)
year98.agg$less100 <- ifelse(year98.agg$contributor_type == "Individual" & (year98.agg$amount > 0 & year98.agg$amount <= 100), year98.agg$amount, 0)
year98.agg$btw100500<- ifelse(year98.agg$contributor_type == "Individual" & (year98.agg$amount > 100 & year98.agg$amount <= 500), year98.agg$amount, 0)
year98.agg$btw5001000<- ifelse(year98.agg$contributor_type == "Individual" & (year98.agg$amount > 500 & year98.agg$amount <= 1000), year98.agg$amount, 0)
year98.agg$btw100010000 <- ifelse(year98.agg$contributor_type == "Individual" & (year98.agg$amount > 1000 & year98.agg$amount <=10000), year98.agg$amount, 0)
year98.agg$grt10000 <- ifelse(year98.agg$contributor_type == "Individual" & (year98.agg$amount > 10000), year98.agg$amount, 0)
year98.agg$totself <- ifelse(year98.agg$contributor_type == "Self", year98.agg$amount, 0)
head(year98.agg)



# CLEAN YEAR 99 ---------------------------------------------------------

year99.agg <- year99

year99.ind <- subset(year99, contributor_type == "Individual" | contributor_type == "Self")
year99.oth <- subset(year99, contributor_type == "Non-Individual" | contributor_type == "Other")

year99.agg.ind0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type, year99.ind, FUN = sum)
year99.agg.ind1 <- aggregate(new_catcode2 ~ Gilens_contributoreid + recipienteid + election_type, year99.ind, head, n = 1)
year99.agg.ind2 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type, year99.ind, head, n = 1)
year99.agg.ind3 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type, year99.ind, head, n = 1)
year99.agg.ind4 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type, year99.ind, head, n = 1)
year99.agg.ind5 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type, year99.ind, head, n = 1)
year99.agg.ind6 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type, year99.ind, head, n = 1)
year99.agg.ind7 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type, year99.ind, head, n = 1)
year99.agg.ind8 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type, year99.ind, head, n = 1)
year99.agg.ind9 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type, year99.ind, head, n = 1)
year99.agg.ind10 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type, year99.ind, head, n = 1)
year99.agg.ind11 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type, year99.ind, head, n = 1)
year99.agg.ind12 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type, year99.ind, head, n = 1)
year99.agg.ind <- cbind(year99.agg.ind0 , year99.agg.ind1[,4], year99.agg.ind2[,4], year99.agg.ind3[,4], year99.agg.ind4[,4], year99.agg.ind5[,4], year99.agg.ind6[,4], year99.agg.ind7[,4], year99.agg.ind8[,4], year99.agg.ind9[,4], year99.agg.ind10[,4], year99.agg.ind11[,4], year99.agg.ind12[,4])
names(year99.agg.ind) <- c("Gilens_contributoreid", "recipienteid", "election_type", "amount", "new_catcode2", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
year99.agg.ind <- year99.agg.ind[, c(1, 2, 3, 5, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)]
year99.agg.ind$new_catcode2 <- -9
head(year99.agg.ind)

year99.agg.oth0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year99.oth, FUN = sum)
year99.agg.oth1 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year99.oth, head, n = 1)
year99.agg.oth2 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year99.oth, head, n = 1)
year99.agg.oth3 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year99.oth, head, n = 1)
year99.agg.oth4 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year99.oth, head, n = 1)
year99.agg.oth5 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year99.oth, head, n = 1)
year99.agg.oth6 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year99.oth, head, n = 1)
year99.agg.oth7 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year99.oth, head, n = 1)
year99.agg.oth8 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year99.oth, head, n = 1)
year99.agg.oth9 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year99.oth, head, n = 1)
year99.agg.oth10 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year99.oth, head, n = 1)
year99.agg.oth11 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year99.oth, head, n = 1)
year99.agg.oth <- cbind(year99.agg.oth0 , year99.agg.oth1[,5], year99.agg.oth2[,5], year99.agg.oth3[,5], year99.agg.oth4[,5], year99.agg.oth5[,5], year99.agg.oth6[,5], year99.agg.oth7[,5], year99.agg.oth8[,5], year99.agg.oth9[,5], year99.agg.oth10[,5], year99.agg.oth11[,5])
names(year99.agg.oth) <- c("Gilens_contributoreid", "recipienteid", "election_type", "new_catcode2", "amount", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
head(year99.agg.oth)

year99.agg <- rbind(year99.agg.oth, year99.agg.ind)

year99.agg$totcat0 <- ifelse(year99.agg$new_catcode == 0, year99.agg$amount, 0)
year99.agg$totcat1 <- ifelse(year99.agg$new_catcode == 1, year99.agg$amount, 0)
year99.agg$totcat2 <- ifelse(year99.agg$new_catcode == 2, year99.agg$amount, 0)
year99.agg$totcat3 <- ifelse(year99.agg$new_catcode == 3, year99.agg$amount, 0)
year99.agg$totcat4 <- ifelse(year99.agg$new_catcode == 4, year99.agg$amount, 0)
year99.agg$totcat5 <- ifelse(year99.agg$new_catcode == 5, year99.agg$amount, 0)
year99.agg$totcat6 <- ifelse(year99.agg$new_catcode == 6, year99.agg$amount, 0)
year99.agg$totcat7 <- ifelse(year99.agg$new_catcode == 7, year99.agg$amount, 0)
year99.agg$totcat8 <- ifelse(year99.agg$new_catcode == 8, year99.agg$amount, 0)
year99.agg$totcat9 <- ifelse(year99.agg$new_catcode == 9, year99.agg$amount, 0)
year99.agg$totcat10 <- ifelse(year99.agg$new_catcode == 10, year99.agg$amount, 0)
year99.agg$totcat11 <- ifelse(year99.agg$new_catcode == 11, year99.agg$amount, 0)
year99.agg$totcat12 <- ifelse(year99.agg$new_catcode == 12, year99.agg$amount, 0)
year99.agg$totcat13 <- ifelse(year99.agg$new_catcode == 13, year99.agg$amount, 0)
year99.agg$totcat14 <- ifelse(year99.agg$new_catcode == 14, year99.agg$amount, 0)
year99.agg$less100 <- ifelse(year99.agg$contributor_type == "Individual" & (year99.agg$amount > 0 & year99.agg$amount <= 100), year99.agg$amount, 0)
year99.agg$btw100500<- ifelse(year99.agg$contributor_type == "Individual" & (year99.agg$amount > 100 & year99.agg$amount <= 500), year99.agg$amount, 0)
year99.agg$btw5001000<- ifelse(year99.agg$contributor_type == "Individual" & (year99.agg$amount > 500 & year99.agg$amount <= 1000), year99.agg$amount, 0)
year99.agg$btw100010000 <- ifelse(year99.agg$contributor_type == "Individual" & (year99.agg$amount > 1000 & year99.agg$amount <=10000), year99.agg$amount, 0)
year99.agg$grt10000 <- ifelse(year99.agg$contributor_type == "Individual" & (year99.agg$amount > 10000), year99.agg$amount, 0)
year99.agg$totself <- ifelse(year99.agg$contributor_type == "Self", year99.agg$amount, 0)

head(year99.agg)



# CLEAN YEAR 00 ---------------------------------------------------------

year00.agg <- year00

year00.ind <- subset(year00, contributor_type == "Individual" | contributor_type == "Self")
year00.oth <- subset(year00, contributor_type == "Non-Individual" | contributor_type == "Other")

year00.agg.ind0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type, year00.ind, FUN = sum)
year00.agg.ind1 <- aggregate(new_catcode2 ~ Gilens_contributoreid + recipienteid + election_type, year00.ind, head, n = 1)
year00.agg.ind2 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type, year00.ind, head, n = 1)
year00.agg.ind3 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type, year00.ind, head, n = 1)
year00.agg.ind4 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type, year00.ind, head, n = 1)
year00.agg.ind5 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type, year00.ind, head, n = 1)
year00.agg.ind6 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type, year00.ind, head, n = 1)
year00.agg.ind7 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type, year00.ind, head, n = 1)
year00.agg.ind8 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type, year00.ind, head, n = 1)
year00.agg.ind9 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type, year00.ind, head, n = 1)
year00.agg.ind10 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type, year00.ind, head, n = 1)
year00.agg.ind11 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type, year00.ind, head, n = 1)
year00.agg.ind12 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type, year00.ind, head, n = 1)
year00.agg.ind <- cbind(year00.agg.ind0 , year00.agg.ind1[,4], year00.agg.ind2[,4], year00.agg.ind3[,4], year00.agg.ind4[,4], year00.agg.ind5[,4], year00.agg.ind6[,4], year00.agg.ind7[,4], year00.agg.ind8[,4], year00.agg.ind9[,4], year00.agg.ind10[,4], year00.agg.ind11[,4], year00.agg.ind12[,4])
names(year00.agg.ind) <- c("Gilens_contributoreid", "recipienteid", "election_type", "amount", "new_catcode2", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
year00.agg.ind <- year00.agg.ind[, c(1, 2, 3, 5, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)]
year00.agg.ind$new_catcode2 <- -9
head(year00.agg.ind)

year00.agg.oth0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year00.oth, FUN = sum)
year00.agg.oth1 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year00.oth, head, n = 1)
year00.agg.oth2 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year00.oth, head, n = 1)
year00.agg.oth3 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year00.oth, head, n = 1)
year00.agg.oth4 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year00.oth, head, n = 1)
year00.agg.oth5 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year00.oth, head, n = 1)
year00.agg.oth6 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year00.oth, head, n = 1)
year00.agg.oth7 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year00.oth, head, n = 1)
year00.agg.oth8 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year00.oth, head, n = 1)
year00.agg.oth9 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year00.oth, head, n = 1)
year00.agg.oth10 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year00.oth, head, n = 1)
year00.agg.oth11 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year00.oth, head, n = 1)
year00.agg.oth <- cbind(year00.agg.oth0 , year00.agg.oth1[,5], year00.agg.oth2[,5], year00.agg.oth3[,5], year00.agg.oth4[,5], year00.agg.oth5[,5], year00.agg.oth6[,5], year00.agg.oth7[,5], year00.agg.oth8[,5], year00.agg.oth9[,5], year00.agg.oth10[,5], year00.agg.oth11[,5])
names(year00.agg.oth) <- c("Gilens_contributoreid", "recipienteid", "election_type", "new_catcode2", "amount", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
head(year00.agg.oth)

year00.agg <- rbind(year00.agg.oth, year00.agg.ind)

year00.agg$totcat0 <- ifelse(year00.agg$new_catcode == 0, year00.agg$amount, 0)
year00.agg$totcat1 <- ifelse(year00.agg$new_catcode == 1, year00.agg$amount, 0)
year00.agg$totcat2 <- ifelse(year00.agg$new_catcode == 2, year00.agg$amount, 0)
year00.agg$totcat3 <- ifelse(year00.agg$new_catcode == 3, year00.agg$amount, 0)
year00.agg$totcat4 <- ifelse(year00.agg$new_catcode == 4, year00.agg$amount, 0)
year00.agg$totcat5 <- ifelse(year00.agg$new_catcode == 5, year00.agg$amount, 0)
year00.agg$totcat6 <- ifelse(year00.agg$new_catcode == 6, year00.agg$amount, 0)
year00.agg$totcat7 <- ifelse(year00.agg$new_catcode == 7, year00.agg$amount, 0)
year00.agg$totcat8 <- ifelse(year00.agg$new_catcode == 8, year00.agg$amount, 0)
year00.agg$totcat9 <- ifelse(year00.agg$new_catcode == 9, year00.agg$amount, 0)
year00.agg$totcat10 <- ifelse(year00.agg$new_catcode == 10, year00.agg$amount, 0)
year00.agg$totcat11 <- ifelse(year00.agg$new_catcode == 11, year00.agg$amount, 0)
year00.agg$totcat12 <- ifelse(year00.agg$new_catcode == 12, year00.agg$amount, 0)
year00.agg$totcat13 <- ifelse(year00.agg$new_catcode == 13, year00.agg$amount, 0)
year00.agg$totcat14 <- ifelse(year00.agg$new_catcode == 14, year00.agg$amount, 0)
year00.agg$less100 <- ifelse(year00.agg$contributor_type == "Individual" & (year00.agg$amount > 0 & year00.agg$amount <= 100), year00.agg$amount, 0)
year00.agg$btw100500<- ifelse(year00.agg$contributor_type == "Individual" & (year00.agg$amount > 100 & year00.agg$amount <= 500), year00.agg$amount, 0)
year00.agg$btw5001000<- ifelse(year00.agg$contributor_type == "Individual" & (year00.agg$amount > 500 & year00.agg$amount <= 1000), year00.agg$amount, 0)
year00.agg$btw100010000 <- ifelse(year00.agg$contributor_type == "Individual" & (year00.agg$amount > 1000 & year00.agg$amount <=10000), year00.agg$amount, 0)
year00.agg$grt10000 <- ifelse(year00.agg$contributor_type == "Individual" & (year00.agg$amount > 10000), year00.agg$amount, 0)
year00.agg$totself <- ifelse(year00.agg$contributor_type == "Self", year00.agg$amount, 0)

head(year00.agg)



# CLEAN YEAR 01 ---------------------------------------------------------

year01.agg <- year01

year01.ind <- subset(year01, contributor_type == "Individual" | contributor_type == "Self")
year01.oth <- subset(year01, contributor_type == "Non-Individual" | contributor_type == "Other")

year01.agg.ind0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type, year01.ind, FUN = sum)
year01.agg.ind1 <- aggregate(new_catcode2 ~ Gilens_contributoreid + recipienteid + election_type, year01.ind, head, n = 1)
year01.agg.ind2 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type, year01.ind, head, n = 1)
year01.agg.ind3 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type, year01.ind, head, n = 1)
year01.agg.ind4 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type, year01.ind, head, n = 1)
year01.agg.ind5 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type, year01.ind, head, n = 1)
year01.agg.ind6 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type, year01.ind, head, n = 1)
year01.agg.ind7 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type, year01.ind, head, n = 1)
year01.agg.ind8 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type, year01.ind, head, n = 1)
year01.agg.ind9 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type, year01.ind, head, n = 1)
year01.agg.ind10 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type, year01.ind, head, n = 1)
year01.agg.ind11 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type, year01.ind, head, n = 1)
year01.agg.ind12 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type, year01.ind, head, n = 1)
year01.agg.ind <- cbind(year01.agg.ind0 , year01.agg.ind1[,4], year01.agg.ind2[,4], year01.agg.ind3[,4], year01.agg.ind4[,4], year01.agg.ind5[,4], year01.agg.ind6[,4], year01.agg.ind7[,4], year01.agg.ind8[,4], year01.agg.ind9[,4], year01.agg.ind10[,4], year01.agg.ind11[,4], year01.agg.ind12[,4])
names(year01.agg.ind) <- c("Gilens_contributoreid", "recipienteid", "election_type", "amount", "new_catcode2", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
year01.agg.ind <- year01.agg.ind[, c(1, 2, 3, 5, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)]
year01.agg.ind$new_catcode2 <- -9
head(year01.agg.ind)

year01.agg.oth0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year01.oth, FUN = sum)
year01.agg.oth1 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year01.oth, head, n = 1)
year01.agg.oth2 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year01.oth, head, n = 1)
year01.agg.oth3 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year01.oth, head, n = 1)
year01.agg.oth4 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year01.oth, head, n = 1)
year01.agg.oth5 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year01.oth, head, n = 1)
year01.agg.oth6 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year01.oth, head, n = 1)
year01.agg.oth7 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year01.oth, head, n = 1)
year01.agg.oth8 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year01.oth, head, n = 1)
year01.agg.oth9 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year01.oth, head, n = 1)
year01.agg.oth10 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year01.oth, head, n = 1)
year01.agg.oth11 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year01.oth, head, n = 1)
year01.agg.oth <- cbind(year01.agg.oth0 , year01.agg.oth1[,5], year01.agg.oth2[,5], year01.agg.oth3[,5], year01.agg.oth4[,5], year01.agg.oth5[,5], year01.agg.oth6[,5], year01.agg.oth7[,5], year01.agg.oth8[,5], year01.agg.oth9[,5], year01.agg.oth10[,5], year01.agg.oth11[,5])
names(year01.agg.oth) <- c("Gilens_contributoreid", "recipienteid", "election_type", "new_catcode2", "amount", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
head(year01.agg.oth)

year01.agg <- rbind(year01.agg.oth, year01.agg.ind)

year01.agg$totcat0 <- ifelse(year01.agg$new_catcode == 0, year01.agg$amount, 0)
year01.agg$totcat1 <- ifelse(year01.agg$new_catcode == 1, year01.agg$amount, 0)
year01.agg$totcat2 <- ifelse(year01.agg$new_catcode == 2, year01.agg$amount, 0)
year01.agg$totcat3 <- ifelse(year01.agg$new_catcode == 3, year01.agg$amount, 0)
year01.agg$totcat4 <- ifelse(year01.agg$new_catcode == 4, year01.agg$amount, 0)
year01.agg$totcat5 <- ifelse(year01.agg$new_catcode == 5, year01.agg$amount, 0)
year01.agg$totcat6 <- ifelse(year01.agg$new_catcode == 6, year01.agg$amount, 0)
year01.agg$totcat7 <- ifelse(year01.agg$new_catcode == 7, year01.agg$amount, 0)
year01.agg$totcat8 <- ifelse(year01.agg$new_catcode == 8, year01.agg$amount, 0)
year01.agg$totcat9 <- ifelse(year01.agg$new_catcode == 9, year01.agg$amount, 0)
year01.agg$totcat10 <- ifelse(year01.agg$new_catcode == 10, year01.agg$amount, 0)
year01.agg$totcat11 <- ifelse(year01.agg$new_catcode == 11, year01.agg$amount, 0)
year01.agg$totcat12 <- ifelse(year01.agg$new_catcode == 12, year01.agg$amount, 0)
year01.agg$totcat13 <- ifelse(year01.agg$new_catcode == 13, year01.agg$amount, 0)
year01.agg$totcat14 <- ifelse(year01.agg$new_catcode == 14, year01.agg$amount, 0)
year01.agg$less100 <- ifelse(year01.agg$contributor_type == "Individual" & (year01.agg$amount > 0 & year01.agg$amount <= 100), year01.agg$amount, 0)
year01.agg$btw100500<- ifelse(year01.agg$contributor_type == "Individual" & (year01.agg$amount > 100 & year01.agg$amount <= 500), year01.agg$amount, 0)
year01.agg$btw5001000<- ifelse(year01.agg$contributor_type == "Individual" & (year01.agg$amount > 500 & year01.agg$amount <= 1000), year01.agg$amount, 0)
year01.agg$btw100010000 <- ifelse(year01.agg$contributor_type == "Individual" & (year01.agg$amount > 1000 & year01.agg$amount <=10000), year01.agg$amount, 0)
year01.agg$grt10000 <- ifelse(year01.agg$contributor_type == "Individual" & (year01.agg$amount > 10000), year01.agg$amount, 0)
year01.agg$totself <- ifelse(year01.agg$contributor_type == "Self", year01.agg$amount, 0)

head(year01.agg)



# CLEAN YEAR 02 ---------------------------------------------------------

year02.agg <- year02

year02.ind <- subset(year02, contributor_type == "Individual" | contributor_type == "Self")
year02.oth <- subset(year02, contributor_type == "Non-Individual" | contributor_type == "Other")

year02.agg.ind0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type, year02.ind, FUN = sum)
year02.agg.ind1 <- aggregate(new_catcode2 ~ Gilens_contributoreid + recipienteid + election_type, year02.ind, head, n = 1)
year02.agg.ind2 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type, year02.ind, head, n = 1)
year02.agg.ind3 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type, year02.ind, head, n = 1)
year02.agg.ind4 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type, year02.ind, head, n = 1)
year02.agg.ind5 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type, year02.ind, head, n = 1)
year02.agg.ind6 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type, year02.ind, head, n = 1)
year02.agg.ind7 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type, year02.ind, head, n = 1)
year02.agg.ind8 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type, year02.ind, head, n = 1)
year02.agg.ind9 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type, year02.ind, head, n = 1)
year02.agg.ind10 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type, year02.ind, head, n = 1)
year02.agg.ind11 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type, year02.ind, head, n = 1)
year02.agg.ind12 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type, year02.ind, head, n = 1)
year02.agg.ind <- cbind(year02.agg.ind0 , year02.agg.ind1[,4], year02.agg.ind2[,4], year02.agg.ind3[,4], year02.agg.ind4[,4], year02.agg.ind5[,4], year02.agg.ind6[,4], year02.agg.ind7[,4], year02.agg.ind8[,4], year02.agg.ind9[,4], year02.agg.ind10[,4], year02.agg.ind11[,4], year02.agg.ind12[,4])
names(year02.agg.ind) <- c("Gilens_contributoreid", "recipienteid", "election_type", "amount", "new_catcode2", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
year02.agg.ind <- year02.agg.ind[, c(1, 2, 3, 5, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)]
year02.agg.ind$new_catcode2 <- -9
head(year02.agg.ind)

year02.agg.oth0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year02.oth, FUN = sum)
year02.agg.oth1 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year02.oth, head, n = 1)
year02.agg.oth2 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year02.oth, head, n = 1)
year02.agg.oth3 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year02.oth, head, n = 1)
year02.agg.oth4 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year02.oth, head, n = 1)
year02.agg.oth5 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year02.oth, head, n = 1)
year02.agg.oth6 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year02.oth, head, n = 1)
year02.agg.oth7 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year02.oth, head, n = 1)
year02.agg.oth8 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year02.oth, head, n = 1)
year02.agg.oth9 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year02.oth, head, n = 1)
year02.agg.oth10 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year02.oth, head, n = 1)
year02.agg.oth11 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year02.oth, head, n = 1)
year02.agg.oth <- cbind(year02.agg.oth0 , year02.agg.oth1[,5], year02.agg.oth2[,5], year02.agg.oth3[,5], year02.agg.oth4[,5], year02.agg.oth5[,5], year02.agg.oth6[,5], year02.agg.oth7[,5], year02.agg.oth8[,5], year02.agg.oth9[,5], year02.agg.oth10[,5], year02.agg.oth11[,5])
names(year02.agg.oth) <- c("Gilens_contributoreid", "recipienteid", "election_type", "new_catcode2", "amount", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
head(year02.agg.oth)

year02.agg <- rbind(year02.agg.oth, year02.agg.ind)

year02.agg$totcat0 <- ifelse(year02.agg$new_catcode == 0, year02.agg$amount, 0)
year02.agg$totcat1 <- ifelse(year02.agg$new_catcode == 1, year02.agg$amount, 0)
year02.agg$totcat2 <- ifelse(year02.agg$new_catcode == 2, year02.agg$amount, 0)
year02.agg$totcat3 <- ifelse(year02.agg$new_catcode == 3, year02.agg$amount, 0)
year02.agg$totcat4 <- ifelse(year02.agg$new_catcode == 4, year02.agg$amount, 0)
year02.agg$totcat5 <- ifelse(year02.agg$new_catcode == 5, year02.agg$amount, 0)
year02.agg$totcat6 <- ifelse(year02.agg$new_catcode == 6, year02.agg$amount, 0)
year02.agg$totcat7 <- ifelse(year02.agg$new_catcode == 7, year02.agg$amount, 0)
year02.agg$totcat8 <- ifelse(year02.agg$new_catcode == 8, year02.agg$amount, 0)
year02.agg$totcat9 <- ifelse(year02.agg$new_catcode == 9, year02.agg$amount, 0)
year02.agg$totcat10 <- ifelse(year02.agg$new_catcode == 10, year02.agg$amount, 0)
year02.agg$totcat11 <- ifelse(year02.agg$new_catcode == 11, year02.agg$amount, 0)
year02.agg$totcat12 <- ifelse(year02.agg$new_catcode == 12, year02.agg$amount, 0)
year02.agg$totcat13 <- ifelse(year02.agg$new_catcode == 13, year02.agg$amount, 0)
year02.agg$totcat14 <- ifelse(year02.agg$new_catcode == 14, year02.agg$amount, 0)
year02.agg$less100 <- ifelse(year02.agg$contributor_type == "Individual" & (year02.agg$amount > 0 & year02.agg$amount <= 100), year02.agg$amount, 0)
year02.agg$btw100500<- ifelse(year02.agg$contributor_type == "Individual" & (year02.agg$amount > 100 & year02.agg$amount <= 500), year02.agg$amount, 0)
year02.agg$btw5001000<- ifelse(year02.agg$contributor_type == "Individual" & (year02.agg$amount > 500 & year02.agg$amount <= 1000), year02.agg$amount, 0)
year02.agg$btw100010000 <- ifelse(year02.agg$contributor_type == "Individual" & (year02.agg$amount > 1000 & year02.agg$amount <=10000), year02.agg$amount, 0)
year02.agg$grt10000 <- ifelse(year02.agg$contributor_type == "Individual" & (year02.agg$amount > 10000), year02.agg$amount, 0)
year02.agg$totself <- ifelse(year02.agg$contributor_type == "Self", year02.agg$amount, 0)

head(year02.agg)



# CLEAN YEAR 03 ---------------------------------------------------------

year03.agg <- year03

year03.ind <- subset(year03, contributor_type == "Individual" | contributor_type == "Self")
year03.oth <- subset(year03, contributor_type == "Non-Individual" | contributor_type == "Other")

year03.agg.ind0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type, year03.ind, FUN = sum)
year03.agg.ind1 <- aggregate(new_catcode2 ~ Gilens_contributoreid + recipienteid + election_type, year03.ind, head, n = 1)
year03.agg.ind2 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type, year03.ind, head, n = 1)
year03.agg.ind3 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type, year03.ind, head, n = 1)
year03.agg.ind4 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type, year03.ind, head, n = 1)
year03.agg.ind5 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type, year03.ind, head, n = 1)
year03.agg.ind6 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type, year03.ind, head, n = 1)
year03.agg.ind7 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type, year03.ind, head, n = 1)
year03.agg.ind8 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type, year03.ind, head, n = 1)
year03.agg.ind9 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type, year03.ind, head, n = 1)
year03.agg.ind10 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type, year03.ind, head, n = 1)
year03.agg.ind11 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type, year03.ind, head, n = 1)
year03.agg.ind12 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type, year03.ind, head, n = 1)
year03.agg.ind <- cbind(year03.agg.ind0 , year03.agg.ind1[,4], year03.agg.ind2[,4], year03.agg.ind3[,4], year03.agg.ind4[,4], year03.agg.ind5[,4], year03.agg.ind6[,4], year03.agg.ind7[,4], year03.agg.ind8[,4], year03.agg.ind9[,4], year03.agg.ind10[,4], year03.agg.ind11[,4], year03.agg.ind12[,4])
names(year03.agg.ind) <- c("Gilens_contributoreid", "recipienteid", "election_type", "amount", "new_catcode2", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
year03.agg.ind <- year03.agg.ind[, c(1, 2, 3, 5, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)]
year03.agg.ind$new_catcode2 <- -9
head(year03.agg.ind)

year03.agg.oth0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year03.oth, FUN = sum)
year03.agg.oth1 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year03.oth, head, n = 1)
year03.agg.oth2 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year03.oth, head, n = 1)
year03.agg.oth3 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year03.oth, head, n = 1)
year03.agg.oth4 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year03.oth, head, n = 1)
year03.agg.oth5 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year03.oth, head, n = 1)
year03.agg.oth6 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year03.oth, head, n = 1)
year03.agg.oth7 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year03.oth, head, n = 1)
year03.agg.oth8 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year03.oth, head, n = 1)
year03.agg.oth9 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year03.oth, head, n = 1)
year03.agg.oth10 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year03.oth, head, n = 1)
year03.agg.oth11 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year03.oth, head, n = 1)
year03.agg.oth <- cbind(year03.agg.oth0 , year03.agg.oth1[,5], year03.agg.oth2[,5], year03.agg.oth3[,5], year03.agg.oth4[,5], year03.agg.oth5[,5], year03.agg.oth6[,5], year03.agg.oth7[,5], year03.agg.oth8[,5], year03.agg.oth9[,5], year03.agg.oth10[,5], year03.agg.oth11[,5])
names(year03.agg.oth) <- c("Gilens_contributoreid", "recipienteid", "election_type", "new_catcode2", "amount", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
head(year03.agg.oth)

year03.agg <- rbind(year03.agg.oth, year03.agg.ind)

year03.agg$totcat0 <- ifelse(year03.agg$new_catcode == 0, year03.agg$amount, 0)
year03.agg$totcat1 <- ifelse(year03.agg$new_catcode == 1, year03.agg$amount, 0)
year03.agg$totcat2 <- ifelse(year03.agg$new_catcode == 2, year03.agg$amount, 0)
year03.agg$totcat3 <- ifelse(year03.agg$new_catcode == 3, year03.agg$amount, 0)
year03.agg$totcat4 <- ifelse(year03.agg$new_catcode == 4, year03.agg$amount, 0)
year03.agg$totcat5 <- ifelse(year03.agg$new_catcode == 5, year03.agg$amount, 0)
year03.agg$totcat6 <- ifelse(year03.agg$new_catcode == 6, year03.agg$amount, 0)
year03.agg$totcat7 <- ifelse(year03.agg$new_catcode == 7, year03.agg$amount, 0)
year03.agg$totcat8 <- ifelse(year03.agg$new_catcode == 8, year03.agg$amount, 0)
year03.agg$totcat9 <- ifelse(year03.agg$new_catcode == 9, year03.agg$amount, 0)
year03.agg$totcat10 <- ifelse(year03.agg$new_catcode == 10, year03.agg$amount, 0)
year03.agg$totcat11 <- ifelse(year03.agg$new_catcode == 11, year03.agg$amount, 0)
year03.agg$totcat12 <- ifelse(year03.agg$new_catcode == 12, year03.agg$amount, 0)
year03.agg$totcat13 <- ifelse(year03.agg$new_catcode == 13, year03.agg$amount, 0)
year03.agg$totcat14 <- ifelse(year03.agg$new_catcode == 14, year03.agg$amount, 0)
year03.agg$less100 <- ifelse(year03.agg$contributor_type == "Individual" & (year03.agg$amount > 0 & year03.agg$amount <= 100), year03.agg$amount, 0)
year03.agg$btw100500<- ifelse(year03.agg$contributor_type == "Individual" & (year03.agg$amount > 100 & year03.agg$amount <= 500), year03.agg$amount, 0)
year03.agg$btw5001000<- ifelse(year03.agg$contributor_type == "Individual" & (year03.agg$amount > 500 & year03.agg$amount <= 1000), year03.agg$amount, 0)
year03.agg$btw100010000 <- ifelse(year03.agg$contributor_type == "Individual" & (year03.agg$amount > 1000 & year03.agg$amount <=10000), year03.agg$amount, 0)
year03.agg$grt10000 <- ifelse(year03.agg$contributor_type == "Individual" & (year03.agg$amount > 10000), year03.agg$amount, 0)
year03.agg$totself <- ifelse(year03.agg$contributor_type == "Self", year03.agg$amount, 0)

head(year03.agg)



# CLEAN YEAR 04 ---------------------------------------------------------

year04.agg <- year04

year04.ind <- subset(year04, contributor_type == "Individual" | contributor_type == "Self")
year04.oth <- subset(year04, contributor_type == "Non-Individual" | contributor_type == "Other")

year04.agg.ind0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type, year04.ind, FUN = sum)
year04.agg.ind1 <- aggregate(new_catcode2 ~ Gilens_contributoreid + recipienteid + election_type, year04.ind, head, n = 1)
year04.agg.ind2 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type, year04.ind, head, n = 1)
year04.agg.ind3 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type, year04.ind, head, n = 1)
year04.agg.ind4 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type, year04.ind, head, n = 1)
year04.agg.ind5 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type, year04.ind, head, n = 1)
year04.agg.ind6 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type, year04.ind, head, n = 1)
year04.agg.ind7 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type, year04.ind, head, n = 1)
year04.agg.ind8 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type, year04.ind, head, n = 1)
year04.agg.ind9 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type, year04.ind, head, n = 1)
year04.agg.ind10 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type, year04.ind, head, n = 1)
year04.agg.ind11 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type, year04.ind, head, n = 1)
year04.agg.ind12 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type, year04.ind, head, n = 1)
year04.agg.ind <- cbind(year04.agg.ind0 , year04.agg.ind1[,4], year04.agg.ind2[,4], year04.agg.ind3[,4], year04.agg.ind4[,4], year04.agg.ind5[,4], year04.agg.ind6[,4], year04.agg.ind7[,4], year04.agg.ind8[,4], year04.agg.ind9[,4], year04.agg.ind10[,4], year04.agg.ind11[,4], year04.agg.ind12[,4])
names(year04.agg.ind) <- c("Gilens_contributoreid", "recipienteid", "election_type", "amount", "new_catcode2", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
year04.agg.ind <- year04.agg.ind[, c(1, 2, 3, 5, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)]
year04.agg.ind$new_catcode2 <- -9
head(year04.agg.ind)

year04.agg.oth0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year04.oth, FUN = sum)
year04.agg.oth1 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year04.oth, head, n = 1)
year04.agg.oth2 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year04.oth, head, n = 1)
year04.agg.oth3 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year04.oth, head, n = 1)
year04.agg.oth4 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year04.oth, head, n = 1)
year04.agg.oth5 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year04.oth, head, n = 1)
year04.agg.oth6 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year04.oth, head, n = 1)
year04.agg.oth7 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year04.oth, head, n = 1)
year04.agg.oth8 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year04.oth, head, n = 1)
year04.agg.oth9 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year04.oth, head, n = 1)
year04.agg.oth10 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year04.oth, head, n = 1)
year04.agg.oth11 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year04.oth, head, n = 1)
year04.agg.oth <- cbind(year04.agg.oth0 , year04.agg.oth1[,5], year04.agg.oth2[,5], year04.agg.oth3[,5], year04.agg.oth4[,5], year04.agg.oth5[,5], year04.agg.oth6[,5], year04.agg.oth7[,5], year04.agg.oth8[,5], year04.agg.oth9[,5], year04.agg.oth10[,5], year04.agg.oth11[,5])
names(year04.agg.oth) <- c("Gilens_contributoreid", "recipienteid", "election_type", "new_catcode2", "amount", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
head(year04.agg.oth)

year04.agg <- rbind(year04.agg.oth, year04.agg.ind)

year04.agg$totcat0 <- ifelse(year04.agg$new_catcode == 0, year04.agg$amount, 0)
year04.agg$totcat1 <- ifelse(year04.agg$new_catcode == 1, year04.agg$amount, 0)
year04.agg$totcat2 <- ifelse(year04.agg$new_catcode == 2, year04.agg$amount, 0)
year04.agg$totcat3 <- ifelse(year04.agg$new_catcode == 3, year04.agg$amount, 0)
year04.agg$totcat4 <- ifelse(year04.agg$new_catcode == 4, year04.agg$amount, 0)
year04.agg$totcat5 <- ifelse(year04.agg$new_catcode == 5, year04.agg$amount, 0)
year04.agg$totcat6 <- ifelse(year04.agg$new_catcode == 6, year04.agg$amount, 0)
year04.agg$totcat7 <- ifelse(year04.agg$new_catcode == 7, year04.agg$amount, 0)
year04.agg$totcat8 <- ifelse(year04.agg$new_catcode == 8, year04.agg$amount, 0)
year04.agg$totcat9 <- ifelse(year04.agg$new_catcode == 9, year04.agg$amount, 0)
year04.agg$totcat10 <- ifelse(year04.agg$new_catcode == 10, year04.agg$amount, 0)
year04.agg$totcat11 <- ifelse(year04.agg$new_catcode == 11, year04.agg$amount, 0)
year04.agg$totcat12 <- ifelse(year04.agg$new_catcode == 12, year04.agg$amount, 0)
year04.agg$totcat13 <- ifelse(year04.agg$new_catcode == 13, year04.agg$amount, 0)
year04.agg$totcat14 <- ifelse(year04.agg$new_catcode == 14, year04.agg$amount, 0)
year04.agg$less100 <- ifelse(year04.agg$contributor_type == "Individual" & (year04.agg$amount > 0 & year04.agg$amount <= 100), year04.agg$amount, 0)
year04.agg$btw100500<- ifelse(year04.agg$contributor_type == "Individual" & (year04.agg$amount > 100 & year04.agg$amount <= 500), year04.agg$amount, 0)
year04.agg$btw5001000<- ifelse(year04.agg$contributor_type == "Individual" & (year04.agg$amount > 500 & year04.agg$amount <= 1000), year04.agg$amount, 0)
year04.agg$btw100010000 <- ifelse(year04.agg$contributor_type == "Individual" & (year04.agg$amount > 1000 & year04.agg$amount <=10000), year04.agg$amount, 0)
year04.agg$grt10000 <- ifelse(year04.agg$contributor_type == "Individual" & (year04.agg$amount > 10000), year04.agg$amount, 0)
year04.agg$totself <- ifelse(year04.agg$contributor_type == "Self", year04.agg$amount, 0)

head(year04.agg)



# CLEAN YEAR 05 ---------------------------------------------------------

year05.agg <- year05

year05.ind <- subset(year05, contributor_type == "Individual" | contributor_type == "Self")
year05.oth <- subset(year05, contributor_type == "Non-Individual" | contributor_type == "Other")

year05.agg.ind0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type, year05.ind, FUN = sum)
year05.agg.ind1 <- aggregate(new_catcode2 ~ Gilens_contributoreid + recipienteid + election_type, year05.ind, head, n = 1)
year05.agg.ind2 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type, year05.ind, head, n = 1)
year05.agg.ind3 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type, year05.ind, head, n = 1)
year05.agg.ind4 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type, year05.ind, head, n = 1)
year05.agg.ind5 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type, year05.ind, head, n = 1)
year05.agg.ind6 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type, year05.ind, head, n = 1)
year05.agg.ind7 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type, year05.ind, head, n = 1)
year05.agg.ind8 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type, year05.ind, head, n = 1)
year05.agg.ind9 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type, year05.ind, head, n = 1)
year05.agg.ind10 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type, year05.ind, head, n = 1)
year05.agg.ind11 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type, year05.ind, head, n = 1)
year05.agg.ind12 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type, year05.ind, head, n = 1)
year05.agg.ind <- cbind(year05.agg.ind0 , year05.agg.ind1[,4], year05.agg.ind2[,4], year05.agg.ind3[,4], year05.agg.ind4[,4], year05.agg.ind5[,4], year05.agg.ind6[,4], year05.agg.ind7[,4], year05.agg.ind8[,4], year05.agg.ind9[,4], year05.agg.ind10[,4], year05.agg.ind11[,4], year05.agg.ind12[,4])
names(year05.agg.ind) <- c("Gilens_contributoreid", "recipienteid", "election_type", "amount", "new_catcode2", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
year05.agg.ind <- year05.agg.ind[, c(1, 2, 3, 5, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)]
year05.agg.ind$new_catcode2 <- -9
head(year05.agg.ind)

year05.agg.oth0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year05.oth, FUN = sum)
year05.agg.oth1 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year05.oth, head, n = 1)
year05.agg.oth2 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year05.oth, head, n = 1)
year05.agg.oth3 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year05.oth, head, n = 1)
year05.agg.oth4 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year05.oth, head, n = 1)
year05.agg.oth5 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year05.oth, head, n = 1)
year05.agg.oth6 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year05.oth, head, n = 1)
year05.agg.oth7 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year05.oth, head, n = 1)
year05.agg.oth8 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year05.oth, head, n = 1)
year05.agg.oth9 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year05.oth, head, n = 1)
year05.agg.oth10 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year05.oth, head, n = 1)
year05.agg.oth11 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year05.oth, head, n = 1)
year05.agg.oth <- cbind(year05.agg.oth0 , year05.agg.oth1[,5], year05.agg.oth2[,5], year05.agg.oth3[,5], year05.agg.oth4[,5], year05.agg.oth5[,5], year05.agg.oth6[,5], year05.agg.oth7[,5], year05.agg.oth8[,5], year05.agg.oth9[,5], year05.agg.oth10[,5], year05.agg.oth11[,5])
names(year05.agg.oth) <- c("Gilens_contributoreid", "recipienteid", "election_type", "new_catcode2", "amount", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
head(year05.agg.oth)

year05.agg <- rbind(year05.agg.oth, year05.agg.ind)

year05.agg$totcat0 <- ifelse(year05.agg$new_catcode == 0, year05.agg$amount, 0)
year05.agg$totcat1 <- ifelse(year05.agg$new_catcode == 1, year05.agg$amount, 0)
year05.agg$totcat2 <- ifelse(year05.agg$new_catcode == 2, year05.agg$amount, 0)
year05.agg$totcat3 <- ifelse(year05.agg$new_catcode == 3, year05.agg$amount, 0)
year05.agg$totcat4 <- ifelse(year05.agg$new_catcode == 4, year05.agg$amount, 0)
year05.agg$totcat5 <- ifelse(year05.agg$new_catcode == 5, year05.agg$amount, 0)
year05.agg$totcat6 <- ifelse(year05.agg$new_catcode == 6, year05.agg$amount, 0)
year05.agg$totcat7 <- ifelse(year05.agg$new_catcode == 7, year05.agg$amount, 0)
year05.agg$totcat8 <- ifelse(year05.agg$new_catcode == 8, year05.agg$amount, 0)
year05.agg$totcat9 <- ifelse(year05.agg$new_catcode == 9, year05.agg$amount, 0)
year05.agg$totcat10 <- ifelse(year05.agg$new_catcode == 10, year05.agg$amount, 0)
year05.agg$totcat11 <- ifelse(year05.agg$new_catcode == 11, year05.agg$amount, 0)
year05.agg$totcat12 <- ifelse(year05.agg$new_catcode == 12, year05.agg$amount, 0)
year05.agg$totcat13 <- ifelse(year05.agg$new_catcode == 13, year05.agg$amount, 0)
year05.agg$totcat14 <- ifelse(year05.agg$new_catcode == 14, year05.agg$amount, 0)
year05.agg$less100 <- ifelse(year05.agg$contributor_type == "Individual" & (year05.agg$amount > 0 & year05.agg$amount <= 100), year05.agg$amount, 0)
year05.agg$btw100500<- ifelse(year05.agg$contributor_type == "Individual" & (year05.agg$amount > 100 & year05.agg$amount <= 500), year05.agg$amount, 0)
year05.agg$btw5001000<- ifelse(year05.agg$contributor_type == "Individual" & (year05.agg$amount > 500 & year05.agg$amount <= 1000), year05.agg$amount, 0)
year05.agg$btw100010000 <- ifelse(year05.agg$contributor_type == "Individual" & (year05.agg$amount > 1000 & year05.agg$amount <=10000), year05.agg$amount, 0)
year05.agg$grt10000 <- ifelse(year05.agg$contributor_type == "Individual" & (year05.agg$amount > 10000), year05.agg$amount, 0)
year05.agg$totself <- ifelse(year05.agg$contributor_type == "Self", year05.agg$amount, 0)

head(year05.agg)



# CLEAN YEAR 06 ---------------------------------------------------------

year06.agg <- year06

year06.ind <- subset(year06, contributor_type == "Individual" | contributor_type == "Self")
year06.oth <- subset(year06, contributor_type == "Non-Individual" | contributor_type == "Other")

year06.agg.ind0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type, year06.ind, FUN = sum)
year06.agg.ind1 <- aggregate(new_catcode2 ~ Gilens_contributoreid + recipienteid + election_type, year06.ind, head, n = 1)
year06.agg.ind2 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type, year06.ind, head, n = 1)
year06.agg.ind3 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type, year06.ind, head, n = 1)
year06.agg.ind4 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type, year06.ind, head, n = 1)
year06.agg.ind5 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type, year06.ind, head, n = 1)
year06.agg.ind6 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type, year06.ind, head, n = 1)
year06.agg.ind7 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type, year06.ind, head, n = 1)
year06.agg.ind8 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type, year06.ind, head, n = 1)
year06.agg.ind9 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type, year06.ind, head, n = 1)
year06.agg.ind10 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type, year06.ind, head, n = 1)
year06.agg.ind11 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type, year06.ind, head, n = 1)
year06.agg.ind12 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type, year06.ind, head, n = 1)
year06.agg.ind <- cbind(year06.agg.ind0 , year06.agg.ind1[,4], year06.agg.ind2[,4], year06.agg.ind3[,4], year06.agg.ind4[,4], year06.agg.ind5[,4], year06.agg.ind6[,4], year06.agg.ind7[,4], year06.agg.ind8[,4], year06.agg.ind9[,4], year06.agg.ind10[,4], year06.agg.ind11[,4], year06.agg.ind12[,4])
names(year06.agg.ind) <- c("Gilens_contributoreid", "recipienteid", "election_type", "amount", "new_catcode2", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
year06.agg.ind <- year06.agg.ind[, c(1, 2, 3, 5, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)]
year06.agg.ind$new_catcode2 <- -9
head(year06.agg.ind)

year06.agg.oth0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year06.oth, FUN = sum)
year06.agg.oth1 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year06.oth, head, n = 1)
year06.agg.oth2 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year06.oth, head, n = 1)
year06.agg.oth3 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year06.oth, head, n = 1)
year06.agg.oth4 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year06.oth, head, n = 1)
year06.agg.oth5 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year06.oth, head, n = 1)
year06.agg.oth6 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year06.oth, head, n = 1)
year06.agg.oth7 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year06.oth, head, n = 1)
year06.agg.oth8 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year06.oth, head, n = 1)
year06.agg.oth9 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year06.oth, head, n = 1)
year06.agg.oth10 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year06.oth, head, n = 1)
year06.agg.oth11 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year06.oth, head, n = 1)
year06.agg.oth <- cbind(year06.agg.oth0 , year06.agg.oth1[,5], year06.agg.oth2[,5], year06.agg.oth3[,5], year06.agg.oth4[,5], year06.agg.oth5[,5], year06.agg.oth6[,5], year06.agg.oth7[,5], year06.agg.oth8[,5], year06.agg.oth9[,5], year06.agg.oth10[,5], year06.agg.oth11[,5])
names(year06.agg.oth) <- c("Gilens_contributoreid", "recipienteid", "election_type", "new_catcode2", "amount", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
head(year06.agg.oth)

year06.agg <- rbind(year06.agg.oth, year06.agg.ind)

year06.agg$totcat0 <- ifelse(year06.agg$new_catcode == 0, year06.agg$amount, 0)
year06.agg$totcat1 <- ifelse(year06.agg$new_catcode == 1, year06.agg$amount, 0)
year06.agg$totcat2 <- ifelse(year06.agg$new_catcode == 2, year06.agg$amount, 0)
year06.agg$totcat3 <- ifelse(year06.agg$new_catcode == 3, year06.agg$amount, 0)
year06.agg$totcat4 <- ifelse(year06.agg$new_catcode == 4, year06.agg$amount, 0)
year06.agg$totcat5 <- ifelse(year06.agg$new_catcode == 5, year06.agg$amount, 0)
year06.agg$totcat6 <- ifelse(year06.agg$new_catcode == 6, year06.agg$amount, 0)
year06.agg$totcat7 <- ifelse(year06.agg$new_catcode == 7, year06.agg$amount, 0)
year06.agg$totcat8 <- ifelse(year06.agg$new_catcode == 8, year06.agg$amount, 0)
year06.agg$totcat9 <- ifelse(year06.agg$new_catcode == 9, year06.agg$amount, 0)
year06.agg$totcat10 <- ifelse(year06.agg$new_catcode == 10, year06.agg$amount, 0)
year06.agg$totcat11 <- ifelse(year06.agg$new_catcode == 11, year06.agg$amount, 0)
year06.agg$totcat12 <- ifelse(year06.agg$new_catcode == 12, year06.agg$amount, 0)
year06.agg$totcat13 <- ifelse(year06.agg$new_catcode == 13, year06.agg$amount, 0)
year06.agg$totcat14 <- ifelse(year06.agg$new_catcode == 14, year06.agg$amount, 0)
year06.agg$less100 <- ifelse(year06.agg$contributor_type == "Individual" & (year06.agg$amount > 0 & year06.agg$amount <= 100), year06.agg$amount, 0)
year06.agg$btw100500<- ifelse(year06.agg$contributor_type == "Individual" & (year06.agg$amount > 100 & year06.agg$amount <= 500), year06.agg$amount, 0)
year06.agg$btw5001000<- ifelse(year06.agg$contributor_type == "Individual" & (year06.agg$amount > 500 & year06.agg$amount <= 1000), year06.agg$amount, 0)
year06.agg$btw100010000 <- ifelse(year06.agg$contributor_type == "Individual" & (year06.agg$amount > 1000 & year06.agg$amount <=10000), year06.agg$amount, 0)
year06.agg$grt10000 <- ifelse(year06.agg$contributor_type == "Individual" & (year06.agg$amount > 10000), year06.agg$amount, 0)
year06.agg$totself <- ifelse(year06.agg$contributor_type == "Self", year06.agg$amount, 0)

head(year06.agg)



# CLEAN YEAR 07 ---------------------------------------------------------

year07.agg <- year07

year07.ind <- subset(year07, contributor_type == "Individual" | contributor_type == "Self")
year07.oth <- subset(year07, contributor_type == "Non-Individual" | contributor_type == "Other")

year07.agg.ind0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type, year07.ind, FUN = sum)
year07.agg.ind1 <- aggregate(new_catcode2 ~ Gilens_contributoreid + recipienteid + election_type, year07.ind, head, n = 1)
year07.agg.ind2 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type, year07.ind, head, n = 1)
year07.agg.ind3 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type, year07.ind, head, n = 1)
year07.agg.ind4 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type, year07.ind, head, n = 1)
year07.agg.ind5 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type, year07.ind, head, n = 1)
year07.agg.ind6 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type, year07.ind, head, n = 1)
year07.agg.ind7 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type, year07.ind, head, n = 1)
year07.agg.ind8 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type, year07.ind, head, n = 1)
year07.agg.ind9 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type, year07.ind, head, n = 1)
year07.agg.ind10 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type, year07.ind, head, n = 1)
year07.agg.ind11 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type, year07.ind, head, n = 1)
year07.agg.ind12 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type, year07.ind, head, n = 1)
year07.agg.ind <- cbind(year07.agg.ind0 , year07.agg.ind1[,4], year07.agg.ind2[,4], year07.agg.ind3[,4], year07.agg.ind4[,4], year07.agg.ind5[,4], year07.agg.ind6[,4], year07.agg.ind7[,4], year07.agg.ind8[,4], year07.agg.ind9[,4], year07.agg.ind10[,4], year07.agg.ind11[,4], year07.agg.ind12[,4])
names(year07.agg.ind) <- c("Gilens_contributoreid", "recipienteid", "election_type", "amount", "new_catcode2", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
year07.agg.ind <- year07.agg.ind[, c(1, 2, 3, 5, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)]
year07.agg.ind$new_catcode2 <- -9
head(year07.agg.ind)

year07.agg.oth0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year07.oth, FUN = sum)
year07.agg.oth1 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year07.oth, head, n = 1)
year07.agg.oth2 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year07.oth, head, n = 1)
year07.agg.oth3 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year07.oth, head, n = 1)
year07.agg.oth4 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year07.oth, head, n = 1)
year07.agg.oth5 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year07.oth, head, n = 1)
year07.agg.oth6 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year07.oth, head, n = 1)
year07.agg.oth7 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year07.oth, head, n = 1)
year07.agg.oth8 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year07.oth, head, n = 1)
year07.agg.oth9 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year07.oth, head, n = 1)
year07.agg.oth10 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year07.oth, head, n = 1)
year07.agg.oth11 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year07.oth, head, n = 1)
year07.agg.oth <- cbind(year07.agg.oth0 , year07.agg.oth1[,5], year07.agg.oth2[,5], year07.agg.oth3[,5], year07.agg.oth4[,5], year07.agg.oth5[,5], year07.agg.oth6[,5], year07.agg.oth7[,5], year07.agg.oth8[,5], year07.agg.oth9[,5], year07.agg.oth10[,5], year07.agg.oth11[,5])
names(year07.agg.oth) <- c("Gilens_contributoreid", "recipienteid", "election_type", "new_catcode2", "amount", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
head(year07.agg.oth)

year07.agg <- rbind(year07.agg.oth, year07.agg.ind)

year07.agg$totcat0 <- ifelse(year07.agg$new_catcode == 0, year07.agg$amount, 0)
year07.agg$totcat1 <- ifelse(year07.agg$new_catcode == 1, year07.agg$amount, 0)
year07.agg$totcat2 <- ifelse(year07.agg$new_catcode == 2, year07.agg$amount, 0)
year07.agg$totcat3 <- ifelse(year07.agg$new_catcode == 3, year07.agg$amount, 0)
year07.agg$totcat4 <- ifelse(year07.agg$new_catcode == 4, year07.agg$amount, 0)
year07.agg$totcat5 <- ifelse(year07.agg$new_catcode == 5, year07.agg$amount, 0)
year07.agg$totcat6 <- ifelse(year07.agg$new_catcode == 6, year07.agg$amount, 0)
year07.agg$totcat7 <- ifelse(year07.agg$new_catcode == 7, year07.agg$amount, 0)
year07.agg$totcat8 <- ifelse(year07.agg$new_catcode == 8, year07.agg$amount, 0)
year07.agg$totcat9 <- ifelse(year07.agg$new_catcode == 9, year07.agg$amount, 0)
year07.agg$totcat10 <- ifelse(year07.agg$new_catcode == 10, year07.agg$amount, 0)
year07.agg$totcat11 <- ifelse(year07.agg$new_catcode == 11, year07.agg$amount, 0)
year07.agg$totcat12 <- ifelse(year07.agg$new_catcode == 12, year07.agg$amount, 0)
year07.agg$totcat13 <- ifelse(year07.agg$new_catcode == 13, year07.agg$amount, 0)
year07.agg$totcat14 <- ifelse(year07.agg$new_catcode == 14, year07.agg$amount, 0)
year07.agg$less100 <- ifelse(year07.agg$contributor_type == "Individual" & (year07.agg$amount > 0 & year07.agg$amount <= 100), year07.agg$amount, 0)
year07.agg$btw100500<- ifelse(year07.agg$contributor_type == "Individual" & (year07.agg$amount > 100 & year07.agg$amount <= 500), year07.agg$amount, 0)
year07.agg$btw5001000<- ifelse(year07.agg$contributor_type == "Individual" & (year07.agg$amount > 500 & year07.agg$amount <= 1000), year07.agg$amount, 0)
year07.agg$btw100010000 <- ifelse(year07.agg$contributor_type == "Individual" & (year07.agg$amount > 1000 & year07.agg$amount <=10000), year07.agg$amount, 0)
year07.agg$grt10000 <- ifelse(year07.agg$contributor_type == "Individual" & (year07.agg$amount > 10000), year07.agg$amount, 0)
year07.agg$totself <- ifelse(year07.agg$contributor_type == "Self", year07.agg$amount, 0)

head(year07.agg)



# CLEAN YEAR 08 ---------------------------------------------------------

year08.agg <- year08

year08.ind <- subset(year08, contributor_type == "Individual" | contributor_type == "Self")
year08.oth <- subset(year08, contributor_type == "Non-Individual" | contributor_type == "Other")

year08.agg.ind0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type, year08.ind, FUN = sum)
year08.agg.ind1 <- aggregate(new_catcode2 ~ Gilens_contributoreid + recipienteid + election_type, year08.ind, head, n = 1)
year08.agg.ind2 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type, year08.ind, head, n = 1)
year08.agg.ind3 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type, year08.ind, head, n = 1)
year08.agg.ind4 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type, year08.ind, head, n = 1)
year08.agg.ind5 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type, year08.ind, head, n = 1)
year08.agg.ind6 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type, year08.ind, head, n = 1)
year08.agg.ind7 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type, year08.ind, head, n = 1)
year08.agg.ind8 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type, year08.ind, head, n = 1)
year08.agg.ind9 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type, year08.ind, head, n = 1)
year08.agg.ind10 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type, year08.ind, head, n = 1)
year08.agg.ind11 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type, year08.ind, head, n = 1)
year08.agg.ind12 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type, year08.ind, head, n = 1)
year08.agg.ind <- cbind(year08.agg.ind0 , year08.agg.ind1[,4], year08.agg.ind2[,4], year08.agg.ind3[,4], year08.agg.ind4[,4], year08.agg.ind5[,4], year08.agg.ind6[,4], year08.agg.ind7[,4], year08.agg.ind8[,4], year08.agg.ind9[,4], year08.agg.ind10[,4], year08.agg.ind11[,4], year08.agg.ind12[,4])
names(year08.agg.ind) <- c("Gilens_contributoreid", "recipienteid", "election_type", "amount", "new_catcode2", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
year08.agg.ind <- year08.agg.ind[, c(1, 2, 3, 5, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)]
year08.agg.ind$new_catcode2 <- -9
head(year08.agg.ind)

year08.agg.oth0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year08.oth, FUN = sum)
year08.agg.oth1 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year08.oth, head, n = 1)
year08.agg.oth2 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year08.oth, head, n = 1)
year08.agg.oth3 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year08.oth, head, n = 1)
year08.agg.oth4 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year08.oth, head, n = 1)
year08.agg.oth5 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year08.oth, head, n = 1)
year08.agg.oth6 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year08.oth, head, n = 1)
year08.agg.oth7 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year08.oth, head, n = 1)
year08.agg.oth8 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year08.oth, head, n = 1)
year08.agg.oth9 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year08.oth, head, n = 1)
year08.agg.oth10 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year08.oth, head, n = 1)
year08.agg.oth11 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year08.oth, head, n = 1)
year08.agg.oth <- cbind(year08.agg.oth0 , year08.agg.oth1[,5], year08.agg.oth2[,5], year08.agg.oth3[,5], year08.agg.oth4[,5], year08.agg.oth5[,5], year08.agg.oth6[,5], year08.agg.oth7[,5], year08.agg.oth8[,5], year08.agg.oth9[,5], year08.agg.oth10[,5], year08.agg.oth11[,5])
names(year08.agg.oth) <- c("Gilens_contributoreid", "recipienteid", "election_type", "new_catcode2", "amount", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
head(year08.agg.oth)

year08.agg <- rbind(year08.agg.oth, year08.agg.ind)

year08.agg$totcat0 <- ifelse(year08.agg$new_catcode == 0, year08.agg$amount, 0)
year08.agg$totcat1 <- ifelse(year08.agg$new_catcode == 1, year08.agg$amount, 0)
year08.agg$totcat2 <- ifelse(year08.agg$new_catcode == 2, year08.agg$amount, 0)
year08.agg$totcat3 <- ifelse(year08.agg$new_catcode == 3, year08.agg$amount, 0)
year08.agg$totcat4 <- ifelse(year08.agg$new_catcode == 4, year08.agg$amount, 0)
year08.agg$totcat5 <- ifelse(year08.agg$new_catcode == 5, year08.agg$amount, 0)
year08.agg$totcat6 <- ifelse(year08.agg$new_catcode == 6, year08.agg$amount, 0)
year08.agg$totcat7 <- ifelse(year08.agg$new_catcode == 7, year08.agg$amount, 0)
year08.agg$totcat8 <- ifelse(year08.agg$new_catcode == 8, year08.agg$amount, 0)
year08.agg$totcat9 <- ifelse(year08.agg$new_catcode == 9, year08.agg$amount, 0)
year08.agg$totcat10 <- ifelse(year08.agg$new_catcode == 10, year08.agg$amount, 0)
year08.agg$totcat11 <- ifelse(year08.agg$new_catcode == 11, year08.agg$amount, 0)
year08.agg$totcat12 <- ifelse(year08.agg$new_catcode == 12, year08.agg$amount, 0)
year08.agg$totcat13 <- ifelse(year08.agg$new_catcode == 13, year08.agg$amount, 0)
year08.agg$totcat14 <- ifelse(year08.agg$new_catcode == 14, year08.agg$amount, 0)
year08.agg$less100 <- ifelse(year08.agg$contributor_type == "Individual" & (year08.agg$amount > 0 & year08.agg$amount <= 100), year08.agg$amount, 0)
year08.agg$btw100500<- ifelse(year08.agg$contributor_type == "Individual" & (year08.agg$amount > 100 & year08.agg$amount <= 500), year08.agg$amount, 0)
year08.agg$btw5001000<- ifelse(year08.agg$contributor_type == "Individual" & (year08.agg$amount > 500 & year08.agg$amount <= 1000), year08.agg$amount, 0)
year08.agg$btw100010000 <- ifelse(year08.agg$contributor_type == "Individual" & (year08.agg$amount > 1000 & year08.agg$amount <=10000), year08.agg$amount, 0)
year08.agg$grt10000 <- ifelse(year08.agg$contributor_type == "Individual" & (year08.agg$amount > 10000), year08.agg$amount, 0)
year08.agg$totself <- ifelse(year08.agg$contributor_type == "Self", year08.agg$amount, 0)

head(year08.agg)



# CLEAN YEAR 09 ---------------------------------------------------------

year09.agg <- year09

year09.ind <- subset(year09, contributor_type == "Individual" | contributor_type == "Self")
year09.oth <- subset(year09, contributor_type == "Non-Individual" | contributor_type == "Other")

year09.agg.ind0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type, year09.ind, FUN = sum)
year09.agg.ind1 <- aggregate(new_catcode2 ~ Gilens_contributoreid + recipienteid + election_type, year09.ind, head, n = 1)
year09.agg.ind2 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type, year09.ind, head, n = 1)
year09.agg.ind3 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type, year09.ind, head, n = 1)
year09.agg.ind4 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type, year09.ind, head, n = 1)
year09.agg.ind5 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type, year09.ind, head, n = 1)
year09.agg.ind6 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type, year09.ind, head, n = 1)
year09.agg.ind7 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type, year09.ind, head, n = 1)
year09.agg.ind8 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type, year09.ind, head, n = 1)
year09.agg.ind9 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type, year09.ind, head, n = 1)
year09.agg.ind10 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type, year09.ind, head, n = 1)
year09.agg.ind11 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type, year09.ind, head, n = 1)
year09.agg.ind12 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type, year09.ind, head, n = 1)
year09.agg.ind <- cbind(year09.agg.ind0 , year09.agg.ind1[,4], year09.agg.ind2[,4], year09.agg.ind3[,4], year09.agg.ind4[,4], year09.agg.ind5[,4], year09.agg.ind6[,4], year09.agg.ind7[,4], year09.agg.ind8[,4], year09.agg.ind9[,4], year09.agg.ind10[,4], year09.agg.ind11[,4], year09.agg.ind12[,4])
names(year09.agg.ind) <- c("Gilens_contributoreid", "recipienteid", "election_type", "amount", "new_catcode2", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
year09.agg.ind <- year09.agg.ind[, c(1, 2, 3, 5, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)]
year09.agg.ind$new_catcode2 <- -9
head(year09.agg.ind)

year09.agg.oth0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year09.oth, FUN = sum)
year09.agg.oth1 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year09.oth, head, n = 1)
year09.agg.oth2 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year09.oth, head, n = 1)
year09.agg.oth3 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year09.oth, head, n = 1)
year09.agg.oth4 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year09.oth, head, n = 1)
year09.agg.oth5 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year09.oth, head, n = 1)
year09.agg.oth6 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year09.oth, head, n = 1)
year09.agg.oth7 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year09.oth, head, n = 1)
year09.agg.oth8 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year09.oth, head, n = 1)
year09.agg.oth9 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year09.oth, head, n = 1)
year09.agg.oth10 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year09.oth, head, n = 1)
year09.agg.oth11 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year09.oth, head, n = 1)
year09.agg.oth <- cbind(year09.agg.oth0 , year09.agg.oth1[,5], year09.agg.oth2[,5], year09.agg.oth3[,5], year09.agg.oth4[,5], year09.agg.oth5[,5], year09.agg.oth6[,5], year09.agg.oth7[,5], year09.agg.oth8[,5], year09.agg.oth9[,5], year09.agg.oth10[,5], year09.agg.oth11[,5])
names(year09.agg.oth) <- c("Gilens_contributoreid", "recipienteid", "election_type", "new_catcode2", "amount", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
head(year09.agg.oth)

year09.agg <- rbind(year09.agg.oth, year09.agg.ind)

year09.agg$totcat0 <- ifelse(year09.agg$new_catcode == 0, year09.agg$amount, 0)
year09.agg$totcat1 <- ifelse(year09.agg$new_catcode == 1, year09.agg$amount, 0)
year09.agg$totcat2 <- ifelse(year09.agg$new_catcode == 2, year09.agg$amount, 0)
year09.agg$totcat3 <- ifelse(year09.agg$new_catcode == 3, year09.agg$amount, 0)
year09.agg$totcat4 <- ifelse(year09.agg$new_catcode == 4, year09.agg$amount, 0)
year09.agg$totcat5 <- ifelse(year09.agg$new_catcode == 5, year09.agg$amount, 0)
year09.agg$totcat6 <- ifelse(year09.agg$new_catcode == 6, year09.agg$amount, 0)
year09.agg$totcat7 <- ifelse(year09.agg$new_catcode == 7, year09.agg$amount, 0)
year09.agg$totcat8 <- ifelse(year09.agg$new_catcode == 8, year09.agg$amount, 0)
year09.agg$totcat9 <- ifelse(year09.agg$new_catcode == 9, year09.agg$amount, 0)
year09.agg$totcat10 <- ifelse(year09.agg$new_catcode == 10, year09.agg$amount, 0)
year09.agg$totcat11 <- ifelse(year09.agg$new_catcode == 11, year09.agg$amount, 0)
year09.agg$totcat12 <- ifelse(year09.agg$new_catcode == 12, year09.agg$amount, 0)
year09.agg$totcat13 <- ifelse(year09.agg$new_catcode == 13, year09.agg$amount, 0)
year09.agg$totcat14 <- ifelse(year09.agg$new_catcode == 14, year09.agg$amount, 0)
year09.agg$less100 <- ifelse(year09.agg$contributor_type == "Individual" & (year09.agg$amount > 0 & year09.agg$amount <= 100), year09.agg$amount, 0)
year09.agg$btw100500<- ifelse(year09.agg$contributor_type == "Individual" & (year09.agg$amount > 100 & year09.agg$amount <= 500), year09.agg$amount, 0)
year09.agg$btw5001000<- ifelse(year09.agg$contributor_type == "Individual" & (year09.agg$amount > 500 & year09.agg$amount <= 1000), year09.agg$amount, 0)
year09.agg$btw100010000 <- ifelse(year09.agg$contributor_type == "Individual" & (year09.agg$amount > 1000 & year09.agg$amount <=10000), year09.agg$amount, 0)
year09.agg$grt10000 <- ifelse(year09.agg$contributor_type == "Individual" & (year09.agg$amount > 10000), year09.agg$amount, 0)
year09.agg$totself <- ifelse(year09.agg$contributor_type == "Self", year09.agg$amount, 0)

head(year09.agg)



# CLEAN YEAR 10 ---------------------------------------------------------

year10$amount <- as.numeric(year10$amount)
year10.agg <- year10

year10.ind <- subset(year10, contributor_type == "Individual" | contributor_type == "Self")
year10.oth <- subset(year10, contributor_type == "Non-Individual" | contributor_type == "Other")

year10.agg.ind0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type, year10.ind, FUN = sum)
year10.agg.ind1 <- aggregate(new_catcode2 ~ Gilens_contributoreid + recipienteid + election_type, year10.ind, head, n = 1)
year10.agg.ind2 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type, year10.ind, head, n = 1)
year10.agg.ind3 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type, year10.ind, head, n = 1)
year10.agg.ind4 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type, year10.ind, head, n = 1)
year10.agg.ind5 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type, year10.ind, head, n = 1)
year10.agg.ind6 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type, year10.ind, head, n = 1)
year10.agg.ind7 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type, year10.ind, head, n = 1)
year10.agg.ind8 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type, year10.ind, head, n = 1)
year10.agg.ind9 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type, year10.ind, head, n = 1)
year10.agg.ind10 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type, year10.ind, head, n = 1)
year10.agg.ind11 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type, year10.ind, head, n = 1)
year10.agg.ind12 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type, year10.ind, head, n = 1)
year10.agg.ind <- cbind(year10.agg.ind0 , year10.agg.ind1[,4], year10.agg.ind2[,4], year10.agg.ind3[,4], year10.agg.ind4[,4], year10.agg.ind5[,4], year10.agg.ind6[,4], year10.agg.ind7[,4], year10.agg.ind8[,4], year10.agg.ind9[,4], year10.agg.ind10[,4], year10.agg.ind11[,4], year10.agg.ind12[,4])
names(year10.agg.ind) <- c("Gilens_contributoreid", "recipienteid", "election_type", "amount", "new_catcode2", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
year10.agg.ind <- year10.agg.ind[, c(1, 2, 3, 5, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)]
year10.agg.ind$new_catcode2 <- -9
head(year10.agg.ind)

year10.agg.oth0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year10.oth, FUN = sum)
year10.agg.oth1 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year10.oth, head, n = 1)
year10.agg.oth2 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year10.oth, head, n = 1)
year10.agg.oth3 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year10.oth, head, n = 1)
year10.agg.oth4 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year10.oth, head, n = 1)
year10.agg.oth5 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year10.oth, head, n = 1)
year10.agg.oth6 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year10.oth, head, n = 1)
year10.agg.oth7 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year10.oth, head, n = 1)
year10.agg.oth8 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year10.oth, head, n = 1)
year10.agg.oth9 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year10.oth, head, n = 1)
year10.agg.oth10 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year10.oth, head, n = 1)
year10.agg.oth11 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year10.oth, head, n = 1)
year10.agg.oth <- cbind(year10.agg.oth0 , year10.agg.oth1[,5], year10.agg.oth2[,5], year10.agg.oth3[,5], year10.agg.oth4[,5], year10.agg.oth5[,5], year10.agg.oth6[,5], year10.agg.oth7[,5], year10.agg.oth8[,5], year10.agg.oth9[,5], year10.agg.oth10[,5], year10.agg.oth11[,5])
names(year10.agg.oth) <- c("Gilens_contributoreid", "recipienteid", "election_type", "new_catcode2", "amount", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
head(year10.agg.oth)

year10.agg <- rbind(year10.agg.oth, year10.agg.ind)

year10.agg$totcat0 <- ifelse(year10.agg$new_catcode == 0, year10.agg$amount, 0)
year10.agg$totcat1 <- ifelse(year10.agg$new_catcode == 1, year10.agg$amount, 0)
year10.agg$totcat2 <- ifelse(year10.agg$new_catcode == 2, year10.agg$amount, 0)
year10.agg$totcat3 <- ifelse(year10.agg$new_catcode == 3, year10.agg$amount, 0)
year10.agg$totcat4 <- ifelse(year10.agg$new_catcode == 4, year10.agg$amount, 0)
year10.agg$totcat5 <- ifelse(year10.agg$new_catcode == 5, year10.agg$amount, 0)
year10.agg$totcat6 <- ifelse(year10.agg$new_catcode == 6, year10.agg$amount, 0)
year10.agg$totcat7 <- ifelse(year10.agg$new_catcode == 7, year10.agg$amount, 0)
year10.agg$totcat8 <- ifelse(year10.agg$new_catcode == 8, year10.agg$amount, 0)
year10.agg$totcat9 <- ifelse(year10.agg$new_catcode == 9, year10.agg$amount, 0)
year10.agg$totcat10 <- ifelse(year10.agg$new_catcode == 10, year10.agg$amount, 0)
year10.agg$totcat11 <- ifelse(year10.agg$new_catcode == 11, year10.agg$amount, 0)
year10.agg$totcat12 <- ifelse(year10.agg$new_catcode == 12, year10.agg$amount, 0)
year10.agg$totcat13 <- ifelse(year10.agg$new_catcode == 13, year10.agg$amount, 0)
year10.agg$totcat14 <- ifelse(year10.agg$new_catcode == 14, year10.agg$amount, 0)
year10.agg$less100 <- ifelse(year10.agg$contributor_type == "Individual" & (year10.agg$amount > 0 & year10.agg$amount <= 100), year10.agg$amount, 0)
year10.agg$btw100500<- ifelse(year10.agg$contributor_type == "Individual" & (year10.agg$amount > 100 & year10.agg$amount <= 500), year10.agg$amount, 0)
year10.agg$btw5001000<- ifelse(year10.agg$contributor_type == "Individual" & (year10.agg$amount > 500 & year10.agg$amount <= 1000), year10.agg$amount, 0)
year10.agg$btw100010000 <- ifelse(year10.agg$contributor_type == "Individual" & (year10.agg$amount > 1000 & year10.agg$amount <=10000), year10.agg$amount, 0)
year10.agg$grt10000 <- ifelse(year10.agg$contributor_type == "Individual" & (year10.agg$amount > 10000), year10.agg$amount, 0)
year10.agg$totself <- ifelse(year10.agg$contributor_type == "Self", year10.agg$amount, 0)

head(year10.agg)



# CLEAN YEAR 11 ---------------------------------------------------------

year11.agg <- year11
year11.agg$amount <- as.numeric(year11.agg$amount)

year11.ind <- subset(year11.agg, contributor_type == "Individual" | contributor_type == "Self")
year11.oth <- subset(year11.agg, contributor_type == "Non-Individual" | contributor_type == "Other")

year11.agg.ind0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type, year11.ind, FUN = sum)
year11.agg.ind1 <- aggregate(new_catcode2 ~ Gilens_contributoreid + recipienteid + election_type, year11.ind, head, n = 1)
year11.agg.ind2 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type, year11.ind, head, n = 1)
year11.agg.ind3 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type, year11.ind, head, n = 1)
year11.agg.ind4 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type, year11.ind, head, n = 1)
year11.agg.ind5 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type, year11.ind, head, n = 1)
year11.agg.ind6 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type, year11.ind, head, n = 1)
year11.agg.ind7 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type, year11.ind, head, n = 1)
year11.agg.ind8 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type, year11.ind, head, n = 1)
year11.agg.ind9 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type, year11.ind, head, n = 1)
year11.agg.ind10 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type, year11.ind, head, n = 1)
year11.agg.ind11 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type, year11.ind, head, n = 1)
year11.agg.ind12 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type, year11.ind, head, n = 1)
year11.agg.ind <- cbind(year11.agg.ind0 , year11.agg.ind1[,4], year11.agg.ind2[,4], year11.agg.ind3[,4], year11.agg.ind4[,4], year11.agg.ind5[,4], year11.agg.ind6[,4], year11.agg.ind7[,4], year11.agg.ind8[,4], year11.agg.ind9[,4], year11.agg.ind10[,4], year11.agg.ind11[,4], year11.agg.ind12[,4])
names(year11.agg.ind) <- c("Gilens_contributoreid", "recipienteid", "election_type", "amount", "new_catcode2", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
year11.agg.ind <- year11.agg.ind[, c(1, 2, 3, 5, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)]
year11.agg.ind$new_catcode2 <- -9
head(year11.agg.ind)

year11.agg.oth0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year11.oth, FUN = sum)
year11.agg.oth1 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year11.oth, head, n = 1)
year11.agg.oth2 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year11.oth, head, n = 1)
year11.agg.oth3 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year11.oth, head, n = 1)
year11.agg.oth4 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year11.oth, head, n = 1)
year11.agg.oth5 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year11.oth, head, n = 1)
year11.agg.oth6 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year11.oth, head, n = 1)
year11.agg.oth7 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year11.oth, head, n = 1)
year11.agg.oth8 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year11.oth, head, n = 1)
year11.agg.oth9 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year11.oth, head, n = 1)
year11.agg.oth10 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year11.oth, head, n = 1)
year11.agg.oth11 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year11.oth, head, n = 1)
year11.agg.oth <- cbind(year11.agg.oth0 , year11.agg.oth1[,5], year11.agg.oth2[,5], year11.agg.oth3[,5], year11.agg.oth4[,5], year11.agg.oth5[,5], year11.agg.oth6[,5], year11.agg.oth7[,5], year11.agg.oth8[,5], year11.agg.oth9[,5], year11.agg.oth10[,5], year11.agg.oth11[,5])
names(year11.agg.oth) <- c("Gilens_contributoreid", "recipienteid", "election_type", "new_catcode2", "amount", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
head(year11.agg.oth)

year11.agg <- rbind(year11.agg.oth, year11.agg.ind)

year11.agg$totcat0 <- ifelse(year11.agg$new_catcode == 0, year11.agg$amount, 0)
year11.agg$totcat1 <- ifelse(year11.agg$new_catcode == 1, year11.agg$amount, 0)
year11.agg$totcat2 <- ifelse(year11.agg$new_catcode == 2, year11.agg$amount, 0)
year11.agg$totcat3 <- ifelse(year11.agg$new_catcode == 3, year11.agg$amount, 0)
year11.agg$totcat4 <- ifelse(year11.agg$new_catcode == 4, year11.agg$amount, 0)
year11.agg$totcat5 <- ifelse(year11.agg$new_catcode == 5, year11.agg$amount, 0)
year11.agg$totcat6 <- ifelse(year11.agg$new_catcode == 6, year11.agg$amount, 0)
year11.agg$totcat7 <- ifelse(year11.agg$new_catcode == 7, year11.agg$amount, 0)
year11.agg$totcat8 <- ifelse(year11.agg$new_catcode == 8, year11.agg$amount, 0)
year11.agg$totcat9 <- ifelse(year11.agg$new_catcode == 9, year11.agg$amount, 0)
year11.agg$totcat10 <- ifelse(year11.agg$new_catcode == 10, year11.agg$amount, 0)
year11.agg$totcat11 <- ifelse(year11.agg$new_catcode == 11, year11.agg$amount, 0)
year11.agg$totcat12 <- ifelse(year11.agg$new_catcode == 12, year11.agg$amount, 0)
year11.agg$totcat13 <- ifelse(year11.agg$new_catcode == 13, year11.agg$amount, 0)
year11.agg$totcat14 <- ifelse(year11.agg$new_catcode == 14, year11.agg$amount, 0)
year11.agg$less100 <- ifelse(year11.agg$contributor_type == "Individual" & (year11.agg$amount > 0 & year11.agg$amount <= 100), year11.agg$amount, 0)
year11.agg$btw100500<- ifelse(year11.agg$contributor_type == "Individual" & (year11.agg$amount > 100 & year11.agg$amount <= 500), year11.agg$amount, 0)
year11.agg$btw5001000<- ifelse(year11.agg$contributor_type == "Individual" & (year11.agg$amount > 500 & year11.agg$amount <= 1000), year11.agg$amount, 0)
year11.agg$btw100010000 <- ifelse(year11.agg$contributor_type == "Individual" & (year11.agg$amount > 1000 & year11.agg$amount <=10000), year11.agg$amount, 0)
year11.agg$grt10000 <- ifelse(year11.agg$contributor_type == "Individual" & (year11.agg$amount > 10000), year11.agg$amount, 0)
year11.agg$totself <- ifelse(year11.agg$contributor_type == "Self", year11.agg$amount, 0)

head(year11.agg)



# CLEAN YEAR 12 ---------------------------------------------------------

year12.agg <- year12

year12.ind <- subset(year12, contributor_type == "Individual" | contributor_type == "Self")
year12.oth <- subset(year12, contributor_type == "Non-Individual" | contributor_type == "Other")

year12.agg.ind0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type, year12.ind, FUN = sum)
year12.agg.ind1 <- aggregate(new_catcode2 ~ Gilens_contributoreid + recipienteid + election_type, year12.ind, head, n = 1)
year12.agg.ind2 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type, year12.ind, head, n = 1)
year12.agg.ind3 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type, year12.ind, head, n = 1)
year12.agg.ind4 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type, year12.ind, head, n = 1)
year12.agg.ind5 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type, year12.ind, head, n = 1)
year12.agg.ind6 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type, year12.ind, head, n = 1)
year12.agg.ind7 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type, year12.ind, head, n = 1)
year12.agg.ind8 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type, year12.ind, head, n = 1)
year12.agg.ind9 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type, year12.ind, head, n = 1)
year12.agg.ind10 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type, year12.ind, head, n = 1)
year12.agg.ind11 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type, year12.ind, head, n = 1)
year12.agg.ind12 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type, year12.ind, head, n = 1)
year12.agg.ind <- cbind(year12.agg.ind0 , year12.agg.ind1[,4], year12.agg.ind2[,4], year12.agg.ind3[,4], year12.agg.ind4[,4], year12.agg.ind5[,4], year12.agg.ind6[,4], year12.agg.ind7[,4], year12.agg.ind8[,4], year12.agg.ind9[,4], year12.agg.ind10[,4], year12.agg.ind11[,4], year12.agg.ind12[,4])
names(year12.agg.ind) <- c("Gilens_contributoreid", "recipienteid", "election_type", "amount", "new_catcode2", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
year12.agg.ind <- year12.agg.ind[, c(1, 2, 3, 5, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)]
year12.agg.ind$new_catcode2 <- -9
head(year12.agg.ind)

year12.agg.oth0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year12.oth, FUN = sum)
year12.agg.oth1 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year12.oth, head, n = 1)
year12.agg.oth2 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year12.oth, head, n = 1)
year12.agg.oth3 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year12.oth, head, n = 1)
year12.agg.oth4 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year12.oth, head, n = 1)
year12.agg.oth5 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year12.oth, head, n = 1)
year12.agg.oth6 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year12.oth, head, n = 1)
year12.agg.oth7 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year12.oth, head, n = 1)
year12.agg.oth8 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year12.oth, head, n = 1)
year12.agg.oth9 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year12.oth, head, n = 1)
year12.agg.oth10 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year12.oth, head, n = 1)
year12.agg.oth11 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year12.oth, head, n = 1)
year12.agg.oth <- cbind(year12.agg.oth0 , year12.agg.oth1[,5], year12.agg.oth2[,5], year12.agg.oth3[,5], year12.agg.oth4[,5], year12.agg.oth5[,5], year12.agg.oth6[,5], year12.agg.oth7[,5], year12.agg.oth8[,5], year12.agg.oth9[,5], year12.agg.oth10[,5], year12.agg.oth11[,5])
names(year12.agg.oth) <- c("Gilens_contributoreid", "recipienteid", "election_type", "new_catcode2", "amount", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
head(year12.agg.oth)

year12.agg <- rbind(year12.agg.oth, year12.agg.ind)

year12.agg$totcat0 <- ifelse(year12.agg$new_catcode == 0, year12.agg$amount, 0)
year12.agg$totcat1 <- ifelse(year12.agg$new_catcode == 1, year12.agg$amount, 0)
year12.agg$totcat2 <- ifelse(year12.agg$new_catcode == 2, year12.agg$amount, 0)
year12.agg$totcat3 <- ifelse(year12.agg$new_catcode == 3, year12.agg$amount, 0)
year12.agg$totcat4 <- ifelse(year12.agg$new_catcode == 4, year12.agg$amount, 0)
year12.agg$totcat5 <- ifelse(year12.agg$new_catcode == 5, year12.agg$amount, 0)
year12.agg$totcat6 <- ifelse(year12.agg$new_catcode == 6, year12.agg$amount, 0)
year12.agg$totcat7 <- ifelse(year12.agg$new_catcode == 7, year12.agg$amount, 0)
year12.agg$totcat8 <- ifelse(year12.agg$new_catcode == 8, year12.agg$amount, 0)
year12.agg$totcat9 <- ifelse(year12.agg$new_catcode == 9, year12.agg$amount, 0)
year12.agg$totcat10 <- ifelse(year12.agg$new_catcode == 10, year12.agg$amount, 0)
year12.agg$totcat11 <- ifelse(year12.agg$new_catcode == 11, year12.agg$amount, 0)
year12.agg$totcat12 <- ifelse(year12.agg$new_catcode == 12, year12.agg$amount, 0)
year12.agg$totcat13 <- ifelse(year12.agg$new_catcode == 13, year12.agg$amount, 0)
year12.agg$totcat14 <- ifelse(year12.agg$new_catcode == 14, year12.agg$amount, 0)
year12.agg$less100 <- ifelse(year12.agg$contributor_type == "Individual" & (year12.agg$amount > 0 & year12.agg$amount <= 100), year12.agg$amount, 0)
year12.agg$btw100500<- ifelse(year12.agg$contributor_type == "Individual" & (year12.agg$amount > 100 & year12.agg$amount <= 500), year12.agg$amount, 0)
year12.agg$btw5001000<- ifelse(year12.agg$contributor_type == "Individual" & (year12.agg$amount > 500 & year12.agg$amount <= 1000), year12.agg$amount, 0)
year12.agg$btw100010000 <- ifelse(year12.agg$contributor_type == "Individual" & (year12.agg$amount > 1000 & year12.agg$amount <=10000), year12.agg$amount, 0)
year12.agg$grt10000 <- ifelse(year12.agg$contributor_type == "Individual" & (year12.agg$amount > 10000), year12.agg$amount, 0)
year12.agg$totself <- ifelse(year12.agg$contributor_type == "Self", year12.agg$amount, 0)

head(year12.agg)



# CLEAN YEAR 13 ---------------------------------------------------------

year13$amount <- as.numeric(year13$amount)
year13.agg <- year13

year13.ind <- subset(year13, contributor_type == "Individual" | contributor_type == "Self")
year13.oth <- subset(year13, contributor_type == "Non-Individual" | contributor_type == "Other")

year13.agg.ind0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type, year13.ind, FUN = sum)
year13.agg.ind1 <- aggregate(new_catcode2 ~ Gilens_contributoreid + recipienteid + election_type, year13.ind, head, n = 1)
year13.agg.ind2 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type, year13.ind, head, n = 1)
year13.agg.ind3 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type, year13.ind, head, n = 1)
year13.agg.ind4 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type, year13.ind, head, n = 1)
year13.agg.ind5 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type, year13.ind, head, n = 1)
year13.agg.ind6 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type, year13.ind, head, n = 1)
year13.agg.ind7 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type, year13.ind, head, n = 1)
year13.agg.ind8 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type, year13.ind, head, n = 1)
year13.agg.ind9 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type, year13.ind, head, n = 1)
year13.agg.ind10 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type, year13.ind, head, n = 1)
year13.agg.ind11 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type, year13.ind, head, n = 1)
year13.agg.ind12 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type, year13.ind, head, n = 1)
year13.agg.ind <- cbind(year13.agg.ind0 , year13.agg.ind1[,4], year13.agg.ind2[,4], year13.agg.ind3[,4], year13.agg.ind4[,4], year13.agg.ind5[,4], year13.agg.ind6[,4], year13.agg.ind7[,4], year13.agg.ind8[,4], year13.agg.ind9[,4], year13.agg.ind10[,4], year13.agg.ind11[,4], year13.agg.ind12[,4])
names(year13.agg.ind) <- c("Gilens_contributoreid", "recipienteid", "election_type", "amount", "new_catcode2", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
year13.agg.ind <- year13.agg.ind[, c(1, 2, 3, 5, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)]
year13.agg.ind$new_catcode2 <- -9
head(year13.agg.ind)

year13.agg.oth0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year13.oth, FUN = sum)
year13.agg.oth1 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year13.oth, head, n = 1)
year13.agg.oth2 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year13.oth, head, n = 1)
year13.agg.oth3 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year13.oth, head, n = 1)
year13.agg.oth4 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year13.oth, head, n = 1)
year13.agg.oth5 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year13.oth, head, n = 1)
year13.agg.oth6 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year13.oth, head, n = 1)
year13.agg.oth7 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year13.oth, head, n = 1)
year13.agg.oth8 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year13.oth, head, n = 1)
year13.agg.oth9 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year13.oth, head, n = 1)
year13.agg.oth10 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year13.oth, head, n = 1)
year13.agg.oth11 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year13.oth, head, n = 1)
year13.agg.oth <- cbind(year13.agg.oth0 , year13.agg.oth1[,5], year13.agg.oth2[,5], year13.agg.oth3[,5], year13.agg.oth4[,5], year13.agg.oth5[,5], year13.agg.oth6[,5], year13.agg.oth7[,5], year13.agg.oth8[,5], year13.agg.oth9[,5], year13.agg.oth10[,5], year13.agg.oth11[,5])
names(year13.agg.oth) <- c("Gilens_contributoreid", "recipienteid", "election_type", "new_catcode2", "amount", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
head(year13.agg.oth)

year13.agg <- rbind(year13.agg.oth, year13.agg.ind)

year13.agg$totcat0 <- ifelse(year13.agg$new_catcode == 0, year13.agg$amount, 0)
year13.agg$totcat1 <- ifelse(year13.agg$new_catcode == 1, year13.agg$amount, 0)
year13.agg$totcat2 <- ifelse(year13.agg$new_catcode == 2, year13.agg$amount, 0)
year13.agg$totcat3 <- ifelse(year13.agg$new_catcode == 3, year13.agg$amount, 0)
year13.agg$totcat4 <- ifelse(year13.agg$new_catcode == 4, year13.agg$amount, 0)
year13.agg$totcat5 <- ifelse(year13.agg$new_catcode == 5, year13.agg$amount, 0)
year13.agg$totcat6 <- ifelse(year13.agg$new_catcode == 6, year13.agg$amount, 0)
year13.agg$totcat7 <- ifelse(year13.agg$new_catcode == 7, year13.agg$amount, 0)
year13.agg$totcat8 <- ifelse(year13.agg$new_catcode == 8, year13.agg$amount, 0)
year13.agg$totcat9 <- ifelse(year13.agg$new_catcode == 9, year13.agg$amount, 0)
year13.agg$totcat10 <- ifelse(year13.agg$new_catcode == 10, year13.agg$amount, 0)
year13.agg$totcat11 <- ifelse(year13.agg$new_catcode == 11, year13.agg$amount, 0)
year13.agg$totcat12 <- ifelse(year13.agg$new_catcode == 12, year13.agg$amount, 0)
year13.agg$totcat13 <- ifelse(year13.agg$new_catcode == 13, year13.agg$amount, 0)
year13.agg$totcat14 <- ifelse(year13.agg$new_catcode == 14, year13.agg$amount, 0)
year13.agg$less100 <- ifelse(year13.agg$contributor_type == "Individual" & (year13.agg$amount > 0 & year13.agg$amount <= 100), year13.agg$amount, 0)
year13.agg$btw100500<- ifelse(year13.agg$contributor_type == "Individual" & (year13.agg$amount > 100 & year13.agg$amount <= 500), year13.agg$amount, 0)
year13.agg$btw5001000<- ifelse(year13.agg$contributor_type == "Individual" & (year13.agg$amount > 500 & year13.agg$amount <= 1000), year13.agg$amount, 0)
year13.agg$btw100010000 <- ifelse(year13.agg$contributor_type == "Individual" & (year13.agg$amount > 1000 & year13.agg$amount <=10000), year13.agg$amount, 0)
year13.agg$grt10000 <- ifelse(year13.agg$contributor_type == "Individual" & (year13.agg$amount > 10000), year13.agg$amount, 0)
year13.agg$totself <- ifelse(year13.agg$contributor_type == "Self", year13.agg$amount, 0)

head(year13.agg)



# CLEAN YEAR 14 ---------------------------------------------------------

year14$amount <- as.numeric(year14$amount)
year14.agg <- year14

year14.ind <- subset(year14, contributor_type == "Individual" | contributor_type == "Self")
year14.oth <- subset(year14, contributor_type == "Non-Individual" | contributor_type == "Other")

year14.agg.ind0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type, year14.ind, FUN = sum)
year14.agg.ind1 <- aggregate(new_catcode2 ~ Gilens_contributoreid + recipienteid + election_type, year14.ind, head, n = 1)
year14.agg.ind2 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type, year14.ind, head, n = 1)
year14.agg.ind3 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type, year14.ind, head, n = 1)
year14.agg.ind4 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type, year14.ind, head, n = 1)
year14.agg.ind5 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type, year14.ind, head, n = 1)
year14.agg.ind6 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type, year14.ind, head, n = 1)
year14.agg.ind7 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type, year14.ind, head, n = 1)
year14.agg.ind8 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type, year14.ind, head, n = 1)
year14.agg.ind9 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type, year14.ind, head, n = 1)
year14.agg.ind10 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type, year14.ind, head, n = 1)
year14.agg.ind11 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type, year14.ind, head, n = 1)
year14.agg.ind12 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type, year14.ind, head, n = 1)
year14.agg.ind <- cbind(year14.agg.ind0 , year14.agg.ind1[,4], year14.agg.ind2[,4], year14.agg.ind3[,4], year14.agg.ind4[,4], year14.agg.ind5[,4], year14.agg.ind6[,4], year14.agg.ind7[,4], year14.agg.ind8[,4], year14.agg.ind9[,4], year14.agg.ind10[,4], year14.agg.ind11[,4], year14.agg.ind12[,4])
names(year14.agg.ind) <- c("Gilens_contributoreid", "recipienteid", "election_type", "amount", "new_catcode2", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
year14.agg.ind <- year14.agg.ind[, c(1, 2, 3, 5, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)]
year14.agg.ind$new_catcode2 <- -9
head(year14.agg.ind)

year14.agg.oth0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year14.oth, FUN = sum)
year14.agg.oth1 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year14.oth, head, n = 1)
year14.agg.oth2 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year14.oth, head, n = 1)
year14.agg.oth3 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year14.oth, head, n = 1)
year14.agg.oth4 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year14.oth, head, n = 1)
year14.agg.oth5 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year14.oth, head, n = 1)
year14.agg.oth6 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year14.oth, head, n = 1)
year14.agg.oth7 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year14.oth, head, n = 1)
year14.agg.oth8 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year14.oth, head, n = 1)
year14.agg.oth9 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year14.oth, head, n = 1)
year14.agg.oth10 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year14.oth, head, n = 1)
year14.agg.oth11 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year14.oth, head, n = 1)
year14.agg.oth <- cbind(year14.agg.oth0 , year14.agg.oth1[,5], year14.agg.oth2[,5], year14.agg.oth3[,5], year14.agg.oth4[,5], year14.agg.oth5[,5], year14.agg.oth6[,5], year14.agg.oth7[,5], year14.agg.oth8[,5], year14.agg.oth9[,5], year14.agg.oth10[,5], year14.agg.oth11[,5])
names(year14.agg.oth) <- c("Gilens_contributoreid", "recipienteid", "election_type", "new_catcode2", "amount", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
head(year14.agg.oth)

year14.agg <- rbind(year14.agg.oth, year14.agg.ind)

year14.agg$totcat0 <- ifelse(year14.agg$new_catcode == 0, year14.agg$amount, 0)
year14.agg$totcat1 <- ifelse(year14.agg$new_catcode == 1, year14.agg$amount, 0)
year14.agg$totcat2 <- ifelse(year14.agg$new_catcode == 2, year14.agg$amount, 0)
year14.agg$totcat3 <- ifelse(year14.agg$new_catcode == 3, year14.agg$amount, 0)
year14.agg$totcat4 <- ifelse(year14.agg$new_catcode == 4, year14.agg$amount, 0)
year14.agg$totcat5 <- ifelse(year14.agg$new_catcode == 5, year14.agg$amount, 0)
year14.agg$totcat6 <- ifelse(year14.agg$new_catcode == 6, year14.agg$amount, 0)
year14.agg$totcat7 <- ifelse(year14.agg$new_catcode == 7, year14.agg$amount, 0)
year14.agg$totcat8 <- ifelse(year14.agg$new_catcode == 8, year14.agg$amount, 0)
year14.agg$totcat9 <- ifelse(year14.agg$new_catcode == 9, year14.agg$amount, 0)
year14.agg$totcat10 <- ifelse(year14.agg$new_catcode == 10, year14.agg$amount, 0)
year14.agg$totcat11 <- ifelse(year14.agg$new_catcode == 11, year14.agg$amount, 0)
year14.agg$totcat12 <- ifelse(year14.agg$new_catcode == 12, year14.agg$amount, 0)
year14.agg$totcat13 <- ifelse(year14.agg$new_catcode == 13, year14.agg$amount, 0)
year14.agg$totcat14 <- ifelse(year14.agg$new_catcode == 14, year14.agg$amount, 0)
year14.agg$less100 <- ifelse(year14.agg$contributor_type == "Individual" & (year14.agg$amount > 0 & year14.agg$amount <= 100), year14.agg$amount, 0)
year14.agg$btw100500<- ifelse(year14.agg$contributor_type == "Individual" & (year14.agg$amount > 100 & year14.agg$amount <= 500), year14.agg$amount, 0)
year14.agg$btw5001000<- ifelse(year14.agg$contributor_type == "Individual" & (year14.agg$amount > 500 & year14.agg$amount <= 1000), year14.agg$amount, 0)
year14.agg$btw100010000 <- ifelse(year14.agg$contributor_type == "Individual" & (year14.agg$amount > 1000 & year14.agg$amount <=10000), year14.agg$amount, 0)
year14.agg$grt10000 <- ifelse(year14.agg$contributor_type == "Individual" & (year14.agg$amount > 10000), year14.agg$amount, 0)
year14.agg$totself <- ifelse(year14.agg$contributor_type == "Self", year14.agg$amount, 0)

head(year14.agg)



# CLEAN YEAR 15 ---------------------------------------------------------

year15$amount <- as.numeric(year15$amount)
year15.agg <- year15

year15.ind <- subset(year15, contributor_type == "Individual" | contributor_type == "Self")
year15.oth <- subset(year15, contributor_type == "Non-Individual" | contributor_type == "Other")

year15.agg.ind0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type, year15.ind, FUN = sum)
year15.agg.ind1 <- aggregate(new_catcode2 ~ Gilens_contributoreid + recipienteid + election_type, year15.ind, head, n = 1)
year15.agg.ind2 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type, year15.ind, head, n = 1)
year15.agg.ind3 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type, year15.ind, head, n = 1)
year15.agg.ind4 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type, year15.ind, head, n = 1)
year15.agg.ind5 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type, year15.ind, head, n = 1)
year15.agg.ind6 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type, year15.ind, head, n = 1)
year15.agg.ind7 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type, year15.ind, head, n = 1)
year15.agg.ind8 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type, year15.ind, head, n = 1)
year15.agg.ind9 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type, year15.ind, head, n = 1)
year15.agg.ind10 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type, year15.ind, head, n = 1)
year15.agg.ind11 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type, year15.ind, head, n = 1)
year15.agg.ind12 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type, year15.ind, head, n = 1)
year15.agg.ind <- cbind(year15.agg.ind0 , year15.agg.ind1[,4], year15.agg.ind2[,4], year15.agg.ind3[,4], year15.agg.ind4[,4], year15.agg.ind5[,4], year15.agg.ind6[,4], year15.agg.ind7[,4], year15.agg.ind8[,4], year15.agg.ind9[,4], year15.agg.ind10[,4], year15.agg.ind11[,4], year15.agg.ind12[,4])
names(year15.agg.ind) <- c("Gilens_contributoreid", "recipienteid", "election_type", "amount", "new_catcode2", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
year15.agg.ind <- year15.agg.ind[, c(1, 2, 3, 5, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)]
year15.agg.ind$new_catcode2 <- -9
head(year15.agg.ind)

year15.agg.oth0 <- aggregate(amount ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year15.oth, FUN = sum)
year15.agg.oth1 <- aggregate(contributor_type ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year15.oth, head, n = 1)
year15.agg.oth2 <- aggregate(contributor_category ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year15.oth, head, n = 1)
year15.agg.oth3 <- aggregate(cycle ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year15.oth, head, n = 1)
year15.agg.oth4 <- aggregate(cycle2 ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year15.oth, head, n = 1)
year15.agg.oth5 <- aggregate(recipient_name ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year15.oth, head, n = 1)
year15.agg.oth6 <- aggregate(recipient_state ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year15.oth, head, n = 1)
year15.agg.oth7 <- aggregate(seat ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year15.oth, head, n = 1)
year15.agg.oth8 <- aggregate(incumbency_status ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year15.oth, head, n = 1)
year15.agg.oth9 <- aggregate(win_loss ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year15.oth, head, n = 1)
year15.agg.oth10 <- aggregate(racetype ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year15.oth, head, n = 1)
year15.agg.oth11 <- aggregate(recipient_party ~ Gilens_contributoreid + recipienteid + election_type + new_catcode2, year15.oth, head, n = 1)
year15.agg.oth <- cbind(year15.agg.oth0 , year15.agg.oth1[,5], year15.agg.oth2[,5], year15.agg.oth3[,5], year15.agg.oth4[,5], year15.agg.oth5[,5], year15.agg.oth6[,5], year15.agg.oth7[,5], year15.agg.oth8[,5], year15.agg.oth9[,5], year15.agg.oth10[,5], year15.agg.oth11[,5])
names(year15.agg.oth) <- c("Gilens_contributoreid", "recipienteid", "election_type", "new_catcode2", "amount", "contributor_type", "contributor_category", "cycle", "cycle2", "recipient_name", "recipient_state", "seat", "incumbency_status", "win_loss", "racetype", "recipient_party")
head(year15.agg.oth)

year15.agg <- rbind(year15.agg.oth, year15.agg.ind)

year15.agg$totcat0 <- ifelse(year15.agg$new_catcode == 0, year15.agg$amount, 0)
year15.agg$totcat1 <- ifelse(year15.agg$new_catcode == 1, year15.agg$amount, 0)
year15.agg$totcat2 <- ifelse(year15.agg$new_catcode == 2, year15.agg$amount, 0)
year15.agg$totcat3 <- ifelse(year15.agg$new_catcode == 3, year15.agg$amount, 0)
year15.agg$totcat4 <- ifelse(year15.agg$new_catcode == 4, year15.agg$amount, 0)
year15.agg$totcat5 <- ifelse(year15.agg$new_catcode == 5, year15.agg$amount, 0)
year15.agg$totcat6 <- ifelse(year15.agg$new_catcode == 6, year15.agg$amount, 0)
year15.agg$totcat7 <- ifelse(year15.agg$new_catcode == 7, year15.agg$amount, 0)
year15.agg$totcat8 <- ifelse(year15.agg$new_catcode == 8, year15.agg$amount, 0)
year15.agg$totcat9 <- ifelse(year15.agg$new_catcode == 9, year15.agg$amount, 0)
year15.agg$totcat10 <- ifelse(year15.agg$new_catcode == 10, year15.agg$amount, 0)
year15.agg$totcat11 <- ifelse(year15.agg$new_catcode == 11, year15.agg$amount, 0)
year15.agg$totcat12 <- ifelse(year15.agg$new_catcode == 12, year15.agg$amount, 0)
year15.agg$totcat13 <- ifelse(year15.agg$new_catcode == 13, year15.agg$amount, 0)
year15.agg$totcat14 <- ifelse(year15.agg$new_catcode == 14, year15.agg$amount, 0)
year15.agg$less100 <- ifelse(year15.agg$contributor_type == "Individual" & (year15.agg$amount > 0 & year15.agg$amount <= 100), year15.agg$amount, 0)
year15.agg$btw100500<- ifelse(year15.agg$contributor_type == "Individual" & (year15.agg$amount > 100 & year15.agg$amount <= 500), year15.agg$amount, 0)
year15.agg$btw5001000<- ifelse(year15.agg$contributor_type == "Individual" & (year15.agg$amount > 500 & year15.agg$amount <= 1000), year15.agg$amount, 0)
year15.agg$btw100010000 <- ifelse(year15.agg$contributor_type == "Individual" & (year15.agg$amount > 1000 & year15.agg$amount <=10000), year15.agg$amount, 0)
year15.agg$grt10000 <- ifelse(year15.agg$contributor_type == "Individual" & (year15.agg$amount > 10000), year15.agg$amount, 0)
year15.agg$totself <- ifelse(year15.agg$contributor_type == "Self", year15.agg$amount, 0)

head(year15.agg)



# COMBINE THE DATA TO INCLUDE CANDIDATES--------------------------------------------------------


all.agg <- rbind(year92.agg, year94.agg, year95.agg, year96.agg, year97.agg, year98.agg, year99.agg, year00.agg, year01.agg, year02.agg, year03.agg, year04.agg, year05.agg, year06.agg, year07.agg, year08.agg, year09.agg, year10.agg, year11.agg, year12.agg, year13.agg, year14.agg, year15.agg)

write.csv(all.agg, "Pre-Aggregated Data.csv")


all.agg <- read.csv("Pre-Aggregated Data.csv")

all.agg1 <- aggregate(totcat0 ~ recipient_state + seat + cycle2 + recipient_name, all.agg, FUN = sum)
all.agg2 <- aggregate(totcat1 ~ recipient_state + seat + cycle2 + recipient_name, all.agg, FUN = sum)
all.agg3 <- aggregate(totcat2 ~ recipient_state + seat + cycle2 + recipient_name, all.agg, FUN = sum)
all.agg4 <- aggregate(totcat3 ~ recipient_state + seat + cycle2 + recipient_name, all.agg, FUN = sum)
all.agg5 <- aggregate(totcat4 ~ recipient_state + seat + cycle2 + recipient_name, all.agg, FUN = sum)
all.agg6 <- aggregate(totcat5 ~ recipient_state + seat + cycle2 + recipient_name, all.agg, FUN = sum)
all.agg7 <- aggregate(totcat6 ~ recipient_state + seat + cycle2 + recipient_name, all.agg, FUN = sum)
all.agg8 <- aggregate(totcat7 ~ recipient_state + seat + cycle2 + recipient_name, all.agg, FUN = sum)
all.agg9 <- aggregate(totcat8 ~ recipient_state + seat + cycle2 + recipient_name, all.agg, FUN = sum)
all.agg10 <- aggregate(totcat9 ~ recipient_state + seat + cycle2 + recipient_name, all.agg, FUN = sum)
all.agg11 <- aggregate(totcat10 ~ recipient_state + seat + cycle2 + recipient_name, all.agg, FUN = sum)
all.agg12 <- aggregate(totcat11 ~ recipient_state + seat + cycle2 + recipient_name, all.agg, FUN = sum)
all.agg13 <- aggregate(totcat12 ~ recipient_state + seat + cycle2 + recipient_name, all.agg, FUN = sum)
all.agg14 <- aggregate(totcat13 ~ recipient_state + seat + cycle2 + recipient_name, all.agg, FUN = sum)
all.agg15 <- aggregate(totcat14 ~ recipient_state + seat + cycle2 + recipient_name, all.agg, FUN = sum)
all.agg16 <- aggregate(less100 ~ recipient_state + seat + cycle2 + recipient_name, all.agg, FUN = sum)
all.agg17 <- aggregate(btw100500 ~ recipient_state + seat + cycle2 + recipient_name, all.agg, FUN = sum)
all.agg18 <- aggregate(btw5001000 ~ recipient_state + seat + cycle2 + recipient_name, all.agg, FUN = sum)
all.agg19 <- aggregate(btw100010000 ~ recipient_state + seat + cycle2 + recipient_name, all.agg, FUN = sum)
all.agg20 <- aggregate(grt10000 ~ recipient_state + seat + cycle2 + recipient_name, all.agg, FUN = sum)
all.agg21 <- aggregate(totself ~ recipient_state + seat + cycle2 + recipient_name, all.agg, FUN = sum)
all.agg22 <- aggregate(incumbency_status ~ recipient_state + seat + cycle2 + recipient_name, all.agg, head, n = 1)
all.agg23 <- aggregate(win_loss ~ recipient_state + seat + cycle2 + recipient_name, all.agg, head, n = 1)
all.agg24 <- aggregate(racetype ~ recipient_state + seat + cycle2 + recipient_name, all.agg, head, n = 1)
all.agg25 <- aggregate(recipient_party ~ recipient_state + seat + cycle2 + recipient_name, all.agg, head, n = 1)


all.agg <- cbind(all.agg1, all.agg2[,5], all.agg3[,5], all.agg4[,5], all.agg5[,5], all.agg6[,5], all.agg7[,5], all.agg8[,5], all.agg9[,5], all.agg10[,5], all.agg11[,5], all.agg12[,5], all.agg13[,5], all.agg14[,5], all.agg15[,5], all.agg16[,5], all.agg17[,5], all.agg18[,5], all.agg19[,5], all.agg20[,5], all.agg21[,5], all.agg22[,5], all.agg23[,5], all.agg24[,5], all.agg25[,5])
names(all.agg) <- c("state", "seat", "year", "candidate", "totcat0", "totcat1", "totcat2", "totcat3", "totcat4", "totcat5", "totcat6", "totcat7", "totcat8", "totcat9","totcat10", "totcat11", "totcat12", "totcat13", "unitemized", "less100", "btw100500", "btw5001000", "btw100010000", "grt10000", "self", "incumbent", "win_loss", "racetype", "recipient_party")

all.agg$total <- all.agg$totcat0 + all.agg$totcat1 + all.agg$totcat2 + all.agg$totcat3 + all.agg$totcat4 + all.agg$totcat5 + all.agg$totcat6 + all.agg$totcat7 + all.agg$totcat8 + all.agg$totcat9 + all.agg$totcat10 + all.agg$totcat11 + all.agg$totcat12 + all.agg$totcat13 + all.agg$unitemized + all.agg$less100 + all.agg$btw100500 + all.agg$btw5001000 + all.agg$btw100010000 + all.agg$grt10000 + all.agg$self
all.agg$business <- all.agg$totcat1
all.agg$political <- all.agg$totcat2 + all.agg$totcat3 + all.agg$totcat4 + all.agg$totcat5 + all.agg$totcat6 + all.agg$totcat7 + all.agg$totcat8 + all.agg$totcat9 + all.agg$totcat10
all.agg$union <- all.agg$totcat11
all.agg$advocacy <- all.agg$totcat12
all.agg$public <- all.agg$totcat13
all.agg$misc <- all.agg$totcat0

all.agg$perc.business <- all.agg$business/all.agg$total
all.agg$perc.union <- all.agg$union/all.agg$total
all.agg$perc.advocacy <- all.agg$advocacy/all.agg$total
all.agg$perc.public <- all.agg$public/all.agg$total
all.agg$perc.political <- all.agg$political/all.agg$total
all.agg$perc.misc <- all.agg$misc/all.agg$total
all.agg$perc.unitemized <- all.agg$unitemized/all.agg$total
all.agg$perc.less100 <- all.agg$less100/all.agg$total
all.agg$perc.btw100500 <- all.agg$btw100500/all.agg$total
all.agg$perc.btw5001000 <- all.agg$btw5001000/all.agg$total
all.agg$perc.btw100010000 <- all.agg$btw100010000/all.agg$total
all.agg$perc.grt10000 <- all.agg$grt10000/all.agg$total
all.agg$perc.self <- all.agg$self/all.agg$total


head(all.agg)

write.csv(all.agg, "Aggregated Contributons FINAL WITH CANDIDATES.csv")




# COMBINE THE DATA TO EXCLUDE CANDIDATES--------------------------------------------------------


all.aggfinal <- all.agg

, year95.agg, year96.agg, year97.agg, year98.agg, year99.agg, year00.agg, year01.agg, year02.agg, year03.agg, year04.agg, year05.agg, year06.agg, year07.agg)

write.csv(all.agg, "Pre-Aggregated Final.csv")


year08.agg, year09.agg, year10.agg, year11.agg, year12.agg, year13.agg, year14.agg, year15.agg)


all.agg1 <- aggregate(totcat0 ~ state + seat + year, all.aggfinal, FUN = sum)
all.agg2 <- aggregate(totcat1 ~ state + seat + year, all.aggfinal, FUN = sum)
all.agg3 <- aggregate(totcat2 ~ state + seat + year, all.aggfinal, FUN = sum)
all.agg4 <- aggregate(totcat3 ~ state + seat + year, all.aggfinal, FUN = sum)
all.agg5 <- aggregate(totcat4 ~ state + seat + year, all.aggfinal, FUN = sum)
all.agg6 <- aggregate(totcat5 ~ state + seat + year, all.aggfinal, FUN = sum)
all.agg7 <- aggregate(totcat6 ~ state + seat + year, all.aggfinal, FUN = sum)
all.agg8 <- aggregate(totcat7 ~ state + seat + year, all.aggfinal, FUN = sum)
all.agg9 <- aggregate(totcat8 ~ state + seat + year, all.aggfinal, FUN = sum)
all.agg10 <- aggregate(totcat9 ~ state + seat + year, all.aggfinal, FUN = sum)
all.agg11 <- aggregate(totcat10 ~ state + seat + year, all.aggfinal, FUN = sum)
all.agg12 <- aggregate(totcat11 ~ state + seat + year, all.aggfinal, FUN = sum)
all.agg13 <- aggregate(totcat12 ~ state + seat + year, all.aggfinal, FUN = sum)
all.agg14 <- aggregate(totcat13 ~ state + seat + year, all.aggfinal, FUN = sum)
all.agg15 <- aggregate(unitemized ~ state + seat + year, all.aggfinal, FUN = sum)
all.agg16 <- aggregate(less100 ~ state + seat + year, all.aggfinal, FUN = sum)
all.agg17 <- aggregate(btw100500 ~ state + seat + year, all.aggfinal, FUN = sum)
all.agg18 <- aggregate(btw5001000 ~ state + seat + year, all.aggfinal, FUN = sum)
all.agg19 <- aggregate(btw100010000 ~ state + seat + year, all.aggfinal, FUN = sum)
all.agg20 <- aggregate(grt10000 ~ state + seat + year, all.aggfinal, FUN = sum)
all.agg21 <- aggregate(self ~ state + seat + year, all.aggfinal, FUN = sum)
all.agg22 <- aggregate(incumbent ~ state + seat + year, all.aggfinal, head, n = 1)
all.agg23 <- aggregate(win_loss ~ state + seat + year, all.aggfinal, head, n = 1)
all.agg24 <- aggregate(racetype ~ state + seat + year, all.aggfinal, head, n = 1)
all.agg25 <- aggregate(recipient_party ~ state + seat + year, all.aggfinal, head, n = 1)


all.agg <- cbind(all.agg1, all.agg2[,4], all.agg3[,4], all.agg4[,4], all.agg5[,4], all.agg6[,4], all.agg7[,4], all.agg8[,4], all.agg9[,4], all.agg10[,4], all.agg11[,4], all.agg12[,4], all.agg13[,4], all.agg14[,4], all.agg15[,4], all.agg16[,4], all.agg17[,4], all.agg18[,4], all.agg19[,4], all.agg20[,4], all.agg21[,4], all.agg22[,4], all.agg23[,4], all.agg24[,4], all.agg25[,4])
names(all.agg) <- c("state", "seat", "year", "totcat0", "totcat1", "totcat2", "totcat3", "totcat4", "totcat5", "totcat6", "totcat7", "totcat8", "totcat9","totcat10", "totcat11", "totcat12", "totcat13", "unitemized", "less100", "btw100500", "btw5001000", "btw100010000", "grt10000", "self", "incumbent", "win_loss", "racetype", "recipient_party")

all.agg$total <- all.agg$totcat0 + all.agg$totcat1 + all.agg$totcat2 + all.agg$totcat3 + all.agg$totcat4 + all.agg$totcat5 + all.agg$totcat6 + all.agg$totcat7 + all.agg$totcat8 + all.agg$totcat9 + all.agg$totcat10 + all.agg$totcat11 + all.agg$totcat12 + all.agg$totcat13 + all.agg$unitemized + all.agg$less100 + all.agg$btw100500 + all.agg$btw5001000 + all.agg$btw100010000 + all.agg$grt10000 + all.agg$self
all.agg$business <- all.agg$totcat1
all.agg$political <- all.agg$totcat2 + all.agg$totcat3 + all.agg$totcat4 + all.agg$totcat5 + all.agg$totcat6 + all.agg$totcat7 + all.agg$totcat8 + all.agg$totcat9 + all.agg$totcat10
all.agg$union <- all.agg$totcat11
all.agg$advocacy <- all.agg$totcat12
all.agg$public <- all.agg$totcat13
all.agg$misc <- all.agg$totcat0

all.agg$perc.business <- all.agg$business/all.agg$total
all.agg$perc.union <- all.agg$union/all.agg$total
all.agg$perc.advocacy <- all.agg$advocacy/all.agg$total
all.agg$perc.public <- all.agg$public/all.agg$total
all.agg$perc.political <- all.agg$political/all.agg$total
all.agg$perc.misc <- all.agg$misc/all.agg$total
all.agg$perc.unitemized <- all.agg$unitemized/all.agg$total
all.agg$perc.less100 <- all.agg$less100/all.agg$total
all.agg$perc.btw100500 <- all.agg$btw100500/all.agg$total
all.agg$perc.btw5001000 <- all.agg$btw5001000/all.agg$total
all.agg$perc.btw100010000 <- all.agg$btw100010000/all.agg$total
all.agg$perc.grt10000 <- all.agg$grt10000/all.agg$total
all.agg$perc.self <- all.agg$self/all.agg$total


write.csv(all.agg, "Aggregated Contributons FINAL WITHOUT CANDIDATES.csv")

head(all.agg)


# READ IN AND CLEAN AGGREGATED DATA ---------------------------------------

library(foreign)
library(psych)
library(dplyr)
library(readstata13)
library(plyr)
library(doBy)

setwd("~/Desktop/1992 to 2015_Contribution Files/Contribution Project/PH Contributions/Final Datasets") #Set working directory


all.agg <- read.csv("Aggregated Contributons FINAL.csv", header = TRUE)



all.agg1 <- split(all.agg,list(all.agg$state,all.agg$seat))
list2env(all.agg1,envir=.GlobalEnv)



# CREATE AGGREGATED DATA GRAPHS FOR INDIVIDUAL CONTRIBUTIONS -----------------------------------------------------------

par(mfrow=c(3, 6)) #Establish aesthetic parameters of the figure


plot(AK.lower$year, AK.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "AK, Unitemized")
points(AK.lower$year, AK.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(AK.upper$year, AK.upper$perc.unitemized*100, col = "red")
points(AK.upper$year, AK.upper$perc.unitemized*100, col = "red", pch = 16)
lines(AK.gov$year, AK.gov$perc.unitemized*100, col = "darkgreen")
points(AK.gov$year, AK.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(AK.lower$year, AK.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "AK, <$100")
points(AK.lower$year, AK.lower$perc.less100*100, col = "blue", pch = 16)
lines(AK.upper$year, AK.upper$perc.less100*100, col = "red")
points(AK.upper$year, AK.upper$perc.less100*100, col = "red", pch = 16)
lines(AK.gov$year, AK.gov$perc.less100*100, col = "darkgreen")
points(AK.gov$year, AK.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(AK.lower$year, AK.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "AK, $100-$500")
points(AK.lower$year, AK.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(AK.upper$year, AK.upper$perc.btw100500*100, col = "red")
points(AK.upper$year, AK.upper$perc.btw100500*100, col = "red", pch = 16)
lines(AK.gov$year, AK.gov$perc.btw100500*100, col = "darkgreen")
points(AK.gov$year, AK.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(AK.lower$year, AK.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "AK, $500-$1,000")
points(AK.lower$year, AK.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(AK.upper$year, AK.upper$perc.btw5001000*100, col = "red")
points(AK.upper$year, AK.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(AK.gov$year, AK.gov$perc.btw5001000*100, col = "darkgreen")
points(AK.gov$year, AK.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(AK.lower$year, AK.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "AK, $1,000-$10,000")
points(AK.lower$year, AK.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(AK.upper$year, AK.upper$perc.btw100010000*100, col = "red")
points(AK.upper$year, AK.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(AK.gov$year, AK.gov$perc.btw100010000*100, col = "darkgreen")
points(AK.gov$year, AK.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(AK.lower$year, AK.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "AK, >$10,000")
points(AK.lower$year, AK.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(AK.upper$year, AK.upper$perc.grt10000*100, col = "red")
points(AK.upper$year, AK.upper$perc.grt10000*100, col = "red", pch = 16)
lines(AK.gov$year, AK.gov$perc.grt10000*100, col = "darkgreen")
points(AK.gov$year, AK.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     




plot(AL.lower$year, AL.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "AL, Unitemized")
points(AL.lower$year, AL.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(AL.upper$year, AL.upper$perc.unitemized*100, col = "red")
points(AL.upper$year, AL.upper$perc.unitemized*100, col = "red", pch = 16)
lines(AL.gov$year, AL.gov$perc.unitemized*100, col = "darkgreen")
points(AL.gov$year, AL.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(AL.lower$year, AL.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "AL, <$100")
points(AL.lower$year, AL.lower$perc.less100*100, col = "blue", pch = 16)
lines(AL.upper$year, AL.upper$perc.less100*100, col = "red")
points(AL.upper$year, AL.upper$perc.less100*100, col = "red", pch = 16)
lines(AL.gov$year, AL.gov$perc.less100*100, col = "darkgreen")
points(AL.gov$year, AL.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(AL.lower$year, AL.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "AL, $100-$500")
points(AL.lower$year, AL.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(AL.upper$year, AL.upper$perc.btw100500*100, col = "red")
points(AL.upper$year, AL.upper$perc.btw100500*100, col = "red", pch = 16)
lines(AL.gov$year, AL.gov$perc.btw100500*100, col = "darkgreen")
points(AL.gov$year, AL.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(AL.lower$year, AL.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "AL, $500-$1,000")
points(AL.lower$year, AL.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(AL.upper$year, AL.upper$perc.btw5001000*100, col = "red")
points(AL.upper$year, AL.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(AL.gov$year, AL.gov$perc.btw5001000*100, col = "darkgreen")
points(AL.gov$year, AL.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(AL.lower$year, AL.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "AL, $1,000-$10,000")
points(AL.lower$year, AL.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(AL.upper$year, AL.upper$perc.btw100010000*100, col = "red")
points(AL.upper$year, AL.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(AL.gov$year, AL.gov$perc.btw100010000*100, col = "darkgreen")
points(AL.gov$year, AL.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(AL.lower$year, AL.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "AL, >$10,000")
points(AL.lower$year, AL.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(AL.upper$year, AL.upper$perc.grt10000*100, col = "red")
points(AL.upper$year, AL.upper$perc.grt10000*100, col = "red", pch = 16)
lines(AL.gov$year, AL.gov$perc.grt10000*100, col = "darkgreen")
points(AL.gov$year, AL.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     








plot(AZ.lower$year, AZ.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "AZ, Unitemized")
points(AZ.lower$year, AZ.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(AZ.upper$year, AZ.upper$perc.unitemized*100, col = "red")
points(AZ.upper$year, AZ.upper$perc.unitemized*100, col = "red", pch = 16)
lines(AZ.gov$year, AZ.gov$perc.unitemized*100, col = "darkgreen")
points(AZ.gov$year, AZ.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(AZ.lower$year, AZ.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "AZ, <$100")
points(AZ.lower$year, AZ.lower$perc.less100*100, col = "blue", pch = 16)
lines(AZ.upper$year, AZ.upper$perc.less100*100, col = "red")
points(AZ.upper$year, AZ.upper$perc.less100*100, col = "red", pch = 16)
lines(AZ.gov$year, AZ.gov$perc.less100*100, col = "darkgreen")
points(AZ.gov$year, AZ.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(AZ.lower$year, AZ.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "AZ, $100-$500")
points(AZ.lower$year, AZ.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(AZ.upper$year, AZ.upper$perc.btw100500*100, col = "red")
points(AZ.upper$year, AZ.upper$perc.btw100500*100, col = "red", pch = 16)
lines(AZ.gov$year, AZ.gov$perc.btw100500*100, col = "darkgreen")
points(AZ.gov$year, AZ.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(AZ.lower$year, AZ.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "AZ, $500-$1,000")
points(AZ.lower$year, AZ.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(AZ.upper$year, AZ.upper$perc.btw5001000*100, col = "red")
points(AZ.upper$year, AZ.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(AZ.gov$year, AZ.gov$perc.btw5001000*100, col = "darkgreen")
points(AZ.gov$year, AZ.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(AZ.lower$year, AZ.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "AZ, $1,000-$10,000")
points(AZ.lower$year, AZ.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(AZ.upper$year, AZ.upper$perc.btw100010000*100, col = "red")
points(AZ.upper$year, AZ.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(AZ.gov$year, AZ.gov$perc.btw100010000*100, col = "darkgreen")
points(AZ.gov$year, AZ.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(AZ.lower$year, AZ.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "AZ, >$10,000")
points(AZ.lower$year, AZ.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(AZ.upper$year, AZ.upper$perc.grt10000*100, col = "red")
points(AZ.upper$year, AZ.upper$perc.grt10000*100, col = "red", pch = 16)
lines(AZ.gov$year, AZ.gov$perc.grt10000*100, col = "darkgreen")
points(AZ.gov$year, AZ.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     





















par(mfrow=c(3, 6)) #Establish aesthetic parameters of the figure

plot(AR.lower$year, AR.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "AR, Unitemized")
points(AR.lower$year, AR.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(AR.upper$year, AR.upper$perc.unitemized*100, col = "red")
points(AR.upper$year, AR.upper$perc.unitemized*100, col = "red", pch = 16)
lines(AR.gov$year, AR.gov$perc.unitemized*100, col = "darkgreen")
points(AR.gov$year, AR.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(AR.lower$year, AR.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "AR, <$100")
points(AR.lower$year, AR.lower$perc.less100*100, col = "blue", pch = 16)
lines(AR.upper$year, AR.upper$perc.less100*100, col = "red")
points(AR.upper$year, AR.upper$perc.less100*100, col = "red", pch = 16)
lines(AR.gov$year, AR.gov$perc.less100*100, col = "darkgreen")
points(AR.gov$year, AR.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(AR.lower$year, AR.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "AR, $100-$500")
points(AR.lower$year, AR.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(AR.upper$year, AR.upper$perc.btw100500*100, col = "red")
points(AR.upper$year, AR.upper$perc.btw100500*100, col = "red", pch = 16)
lines(AR.gov$year, AR.gov$perc.btw100500*100, col = "darkgreen")
points(AR.gov$year, AR.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(AR.lower$year, AR.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "AR, $500-$1,000")
points(AR.lower$year, AR.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(AR.upper$year, AR.upper$perc.btw5001000*100, col = "red")
points(AR.upper$year, AR.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(AR.gov$year, AR.gov$perc.btw5001000*100, col = "darkgreen")
points(AR.gov$year, AR.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(AR.lower$year, AR.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "AR, $1,000-$10,000")
points(AR.lower$year, AR.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(AR.upper$year, AR.upper$perc.btw100010000*100, col = "red")
points(AR.upper$year, AR.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(AR.gov$year, AR.gov$perc.btw100010000*100, col = "darkgreen")
points(AR.gov$year, AR.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(AR.lower$year, AR.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "AR, >$10,000")
points(AR.lower$year, AR.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(AR.upper$year, AR.upper$perc.grt10000*100, col = "red")
points(AR.upper$year, AR.upper$perc.grt10000*100, col = "red", pch = 16)
lines(AR.gov$year, AR.gov$perc.grt10000*100, col = "darkgreen")
points(AR.gov$year, AR.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






plot(CA.lower$year, CA.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "CA, Unitemized")
points(CA.lower$year, CA.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(CA.upper$year, CA.upper$perc.unitemized*100, col = "red")
points(CA.upper$year, CA.upper$perc.unitemized*100, col = "red", pch = 16)
lines(CA.gov$year, CA.gov$perc.unitemized*100, col = "darkgreen")
points(CA.gov$year, CA.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(CA.lower$year, CA.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "CA, <$100")
points(CA.lower$year, CA.lower$perc.less100*100, col = "blue", pch = 16)
lines(CA.upper$year, CA.upper$perc.less100*100, col = "red")
points(CA.upper$year, CA.upper$perc.less100*100, col = "red", pch = 16)
lines(CA.gov$year, CA.gov$perc.less100*100, col = "darkgreen")
points(CA.gov$year, CA.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(CA.lower$year, CA.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "CA, $100-$500")
points(CA.lower$year, CA.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(CA.upper$year, CA.upper$perc.btw100500*100, col = "red")
points(CA.upper$year, CA.upper$perc.btw100500*100, col = "red", pch = 16)
lines(CA.gov$year, CA.gov$perc.btw100500*100, col = "darkgreen")
points(CA.gov$year, CA.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(CA.lower$year, CA.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "CA, $500-$1,000")
points(CA.lower$year, CA.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(CA.upper$year, CA.upper$perc.btw5001000*100, col = "red")
points(CA.upper$year, CA.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(CA.gov$year, CA.gov$perc.btw5001000*100, col = "darkgreen")
points(CA.gov$year, CA.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(CA.lower$year, CA.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "CA, $1,000-$10,000")
points(CA.lower$year, CA.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(CA.upper$year, CA.upper$perc.btw100010000*100, col = "red")
points(CA.upper$year, CA.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(CA.gov$year, CA.gov$perc.btw100010000*100, col = "darkgreen")
points(CA.gov$year, CA.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(CA.lower$year, CA.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "CA, >$10,000")
points(CA.lower$year, CA.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(CA.upper$year, CA.upper$perc.grt10000*100, col = "red")
points(CA.upper$year, CA.upper$perc.grt10000*100, col = "red", pch = 16)
lines(CA.gov$year, CA.gov$perc.grt10000*100, col = "darkgreen")
points(CA.gov$year, CA.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     







plot(CO.lower$year, CO.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "CO, Unitemized")
points(CO.lower$year, CO.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(CO.upper$year, CO.upper$perc.unitemized*100, col = "red")
points(CO.upper$year, CO.upper$perc.unitemized*100, col = "red", pch = 16)
lines(CO.gov$year, CO.gov$perc.unitemized*100, col = "darkgreen")
points(CO.gov$year, CO.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(CO.lower$year, CO.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "CO, <$100")
points(CO.lower$year, CO.lower$perc.less100*100, col = "blue", pch = 16)
lines(CO.upper$year, CO.upper$perc.less100*100, col = "red")
points(CO.upper$year, CO.upper$perc.less100*100, col = "red", pch = 16)
lines(CO.gov$year, CO.gov$perc.less100*100, col = "darkgreen")
points(CO.gov$year, CO.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(CO.lower$year, CO.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "CO, $100-$500")
points(CO.lower$year, CO.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(CO.upper$year, CO.upper$perc.btw100500*100, col = "red")
points(CO.upper$year, CO.upper$perc.btw100500*100, col = "red", pch = 16)
lines(CO.gov$year, CO.gov$perc.btw100500*100, col = "darkgreen")
points(CO.gov$year, CO.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(CO.lower$year, CO.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "CO, $500-$1,000")
points(CO.lower$year, CO.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(CO.upper$year, CO.upper$perc.btw5001000*100, col = "red")
points(CO.upper$year, CO.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(CO.gov$year, CO.gov$perc.btw5001000*100, col = "darkgreen")
points(CO.gov$year, CO.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(CO.lower$year, CO.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "CO, $1,000-$10,000")
points(CO.lower$year, CO.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(CO.upper$year, CO.upper$perc.btw100010000*100, col = "red")
points(CO.upper$year, CO.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(CO.gov$year, CO.gov$perc.btw100010000*100, col = "darkgreen")
points(CO.gov$year, CO.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(CO.lower$year, CO.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "CO, >$10,000")
points(CO.lower$year, CO.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(CO.upper$year, CO.upper$perc.grt10000*100, col = "red")
points(CO.upper$year, CO.upper$perc.grt10000*100, col = "red", pch = 16)
lines(CO.gov$year, CO.gov$perc.grt10000*100, col = "darkgreen")
points(CO.gov$year, CO.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     





















par(mfrow=c(3, 6)) #Establish aesthetic parameters of the figure

plot(CT.lower$year, CT.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "CT, Unitemized")
points(CT.lower$year, CT.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(CT.upper$year, CT.upper$perc.unitemized*100, col = "red")
points(CT.upper$year, CT.upper$perc.unitemized*100, col = "red", pch = 16)
lines(CT.gov$year, CT.gov$perc.unitemized*100, col = "darkgreen")
points(CT.gov$year, CT.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(CT.lower$year, CT.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "CT, <$100")
points(CT.lower$year, CT.lower$perc.less100*100, col = "blue", pch = 16)
lines(CT.upper$year, CT.upper$perc.less100*100, col = "red")
points(CT.upper$year, CT.upper$perc.less100*100, col = "red", pch = 16)
lines(CT.gov$year, CT.gov$perc.less100*100, col = "darkgreen")
points(CT.gov$year, CT.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(CT.lower$year, CT.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "CT, $100-$500")
points(CT.lower$year, CT.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(CT.upper$year, CT.upper$perc.btw100500*100, col = "red")
points(CT.upper$year, CT.upper$perc.btw100500*100, col = "red", pch = 16)
lines(CT.gov$year, CT.gov$perc.btw100500*100, col = "darkgreen")
points(CT.gov$year, CT.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(CT.lower$year, CT.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "CT, $500-$1,000")
points(CT.lower$year, CT.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(CT.upper$year, CT.upper$perc.btw5001000*100, col = "red")
points(CT.upper$year, CT.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(CT.gov$year, CT.gov$perc.btw5001000*100, col = "darkgreen")
points(CT.gov$year, CT.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(CT.lower$year, CT.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "CT, $1,000-$10,000")
points(CT.lower$year, CT.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(CT.upper$year, CT.upper$perc.btw100010000*100, col = "red")
points(CT.upper$year, CT.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(CT.gov$year, CT.gov$perc.btw100010000*100, col = "darkgreen")
points(CT.gov$year, CT.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(CT.lower$year, CT.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "CT, >$10,000")
points(CT.lower$year, CT.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(CT.upper$year, CT.upper$perc.grt10000*100, col = "red")
points(CT.upper$year, CT.upper$perc.grt10000*100, col = "red", pch = 16)
lines(CT.gov$year, CT.gov$perc.grt10000*100, col = "darkgreen")
points(CT.gov$year, CT.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






plot(DE.lower$year, DE.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "DE, Unitemized")
points(DE.lower$year, DE.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(DE.upper$year, DE.upper$perc.unitemized*100, col = "red")
points(DE.upper$year, DE.upper$perc.unitemized*100, col = "red", pch = 16)
lines(DE.gov$year, DE.gov$perc.unitemized*100, col = "darkgreen")
points(DE.gov$year, DE.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(DE.lower$year, DE.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "DE, <$100")
points(DE.lower$year, DE.lower$perc.less100*100, col = "blue", pch = 16)
lines(DE.upper$year, DE.upper$perc.less100*100, col = "red")
points(DE.upper$year, DE.upper$perc.less100*100, col = "red", pch = 16)
lines(DE.gov$year, DE.gov$perc.less100*100, col = "darkgreen")
points(DE.gov$year, DE.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(DE.lower$year, DE.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "DE, $100-$500")
points(DE.lower$year, DE.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(DE.upper$year, DE.upper$perc.btw100500*100, col = "red")
points(DE.upper$year, DE.upper$perc.btw100500*100, col = "red", pch = 16)
lines(DE.gov$year, DE.gov$perc.btw100500*100, col = "darkgreen")
points(DE.gov$year, DE.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(DE.lower$year, DE.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "DE, $500-$1,000")
points(DE.lower$year, DE.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(DE.upper$year, DE.upper$perc.btw5001000*100, col = "red")
points(DE.upper$year, DE.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(DE.gov$year, DE.gov$perc.btw5001000*100, col = "darkgreen")
points(DE.gov$year, DE.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(DE.lower$year, DE.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "DE, $1,000-$10,000")
points(DE.lower$year, DE.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(DE.upper$year, DE.upper$perc.btw100010000*100, col = "red")
points(DE.upper$year, DE.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(DE.gov$year, DE.gov$perc.btw100010000*100, col = "darkgreen")
points(DE.gov$year, DE.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(DE.lower$year, DE.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "DE, >$10,000")
points(DE.lower$year, DE.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(DE.upper$year, DE.upper$perc.grt10000*100, col = "red")
points(DE.upper$year, DE.upper$perc.grt10000*100, col = "red", pch = 16)
lines(DE.gov$year, DE.gov$perc.grt10000*100, col = "darkgreen")
points(DE.gov$year, DE.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     







plot(FL.lower$year, FL.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "FL, Unitemized")
points(FL.lower$year, FL.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(FL.upper$year, FL.upper$perc.unitemized*100, col = "red")
points(FL.upper$year, FL.upper$perc.unitemized*100, col = "red", pch = 16)
lines(FL.gov$year, FL.gov$perc.unitemized*100, col = "darkgreen")
points(FL.gov$year, FL.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(FL.lower$year, FL.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "FL, <$100")
points(FL.lower$year, FL.lower$perc.less100*100, col = "blue", pch = 16)
lines(FL.upper$year, FL.upper$perc.less100*100, col = "red")
points(FL.upper$year, FL.upper$perc.less100*100, col = "red", pch = 16)
lines(FL.gov$year, FL.gov$perc.less100*100, col = "darkgreen")
points(FL.gov$year, FL.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(FL.lower$year, FL.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "FL, $100-$500")
points(FL.lower$year, FL.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(FL.upper$year, FL.upper$perc.btw100500*100, col = "red")
points(FL.upper$year, FL.upper$perc.btw100500*100, col = "red", pch = 16)
lines(FL.gov$year, FL.gov$perc.btw100500*100, col = "darkgreen")
points(FL.gov$year, FL.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(FL.lower$year, FL.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "FL, $500-$1,000")
points(FL.lower$year, FL.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(FL.upper$year, FL.upper$perc.btw5001000*100, col = "red")
points(FL.upper$year, FL.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(FL.gov$year, FL.gov$perc.btw5001000*100, col = "darkgreen")
points(FL.gov$year, FL.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(FL.lower$year, FL.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "FL, $1,000-$10,000")
points(FL.lower$year, FL.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(FL.upper$year, FL.upper$perc.btw100010000*100, col = "red")
points(FL.upper$year, FL.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(FL.gov$year, FL.gov$perc.btw100010000*100, col = "darkgreen")
points(FL.gov$year, FL.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(FL.lower$year, FL.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "FL, >$10,000")
points(FL.lower$year, FL.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(FL.upper$year, FL.upper$perc.grt10000*100, col = "red")
points(FL.upper$year, FL.upper$perc.grt10000*100, col = "red", pch = 16)
lines(FL.gov$year, FL.gov$perc.grt10000*100, col = "darkgreen")
points(FL.gov$year, FL.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






















par(mfrow=c(3, 6)) #Establish aesthetic parameters of the figure

plot(GA.lower$year, GA.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "GA, Unitemized")
points(GA.lower$year, GA.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(GA.upper$year, GA.upper$perc.unitemized*100, col = "red")
points(GA.upper$year, GA.upper$perc.unitemized*100, col = "red", pch = 16)
lines(GA.gov$year, GA.gov$perc.unitemized*100, col = "darkgreen")
points(GA.gov$year, GA.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(GA.lower$year, GA.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "GA, <$100")
points(GA.lower$year, GA.lower$perc.less100*100, col = "blue", pch = 16)
lines(GA.upper$year, GA.upper$perc.less100*100, col = "red")
points(GA.upper$year, GA.upper$perc.less100*100, col = "red", pch = 16)
lines(GA.gov$year, GA.gov$perc.less100*100, col = "darkgreen")
points(GA.gov$year, GA.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(GA.lower$year, GA.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "GA, $100-$500")
points(GA.lower$year, GA.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(GA.upper$year, GA.upper$perc.btw100500*100, col = "red")
points(GA.upper$year, GA.upper$perc.btw100500*100, col = "red", pch = 16)
lines(GA.gov$year, GA.gov$perc.btw100500*100, col = "darkgreen")
points(GA.gov$year, GA.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(GA.lower$year, GA.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "GA, $500-$1,000")
points(GA.lower$year, GA.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(GA.upper$year, GA.upper$perc.btw5001000*100, col = "red")
points(GA.upper$year, GA.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(GA.gov$year, GA.gov$perc.btw5001000*100, col = "darkgreen")
points(GA.gov$year, GA.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(GA.lower$year, GA.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "GA, $1,000-$10,000")
points(GA.lower$year, GA.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(GA.upper$year, GA.upper$perc.btw100010000*100, col = "red")
points(GA.upper$year, GA.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(GA.gov$year, GA.gov$perc.btw100010000*100, col = "darkgreen")
points(GA.gov$year, GA.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(GA.lower$year, GA.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "GA, >$10,000")
points(GA.lower$year, GA.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(GA.upper$year, GA.upper$perc.grt10000*100, col = "red")
points(GA.upper$year, GA.upper$perc.grt10000*100, col = "red", pch = 16)
lines(GA.gov$year, GA.gov$perc.grt10000*100, col = "darkgreen")
points(GA.gov$year, GA.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






plot(HI.lower$year, HI.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "HI, Unitemized")
points(HI.lower$year, HI.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(HI.upper$year, HI.upper$perc.unitemized*100, col = "red")
points(HI.upper$year, HI.upper$perc.unitemized*100, col = "red", pch = 16)
lines(HI.gov$year, HI.gov$perc.unitemized*100, col = "darkgreen")
points(HI.gov$year, HI.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(HI.lower$year, HI.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "HI, <$100")
points(HI.lower$year, HI.lower$perc.less100*100, col = "blue", pch = 16)
lines(HI.upper$year, HI.upper$perc.less100*100, col = "red")
points(HI.upper$year, HI.upper$perc.less100*100, col = "red", pch = 16)
lines(HI.gov$year, HI.gov$perc.less100*100, col = "darkgreen")
points(HI.gov$year, HI.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(HI.lower$year, HI.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "HI, $100-$500")
points(HI.lower$year, HI.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(HI.upper$year, HI.upper$perc.btw100500*100, col = "red")
points(HI.upper$year, HI.upper$perc.btw100500*100, col = "red", pch = 16)
lines(HI.gov$year, HI.gov$perc.btw100500*100, col = "darkgreen")
points(HI.gov$year, HI.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(HI.lower$year, HI.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "HI, $500-$1,000")
points(HI.lower$year, HI.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(HI.upper$year, HI.upper$perc.btw5001000*100, col = "red")
points(HI.upper$year, HI.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(HI.gov$year, HI.gov$perc.btw5001000*100, col = "darkgreen")
points(HI.gov$year, HI.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(HI.lower$year, HI.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "HI, $1,000-$10,000")
points(HI.lower$year, HI.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(HI.upper$year, HI.upper$perc.btw100010000*100, col = "red")
points(HI.upper$year, HI.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(HI.gov$year, HI.gov$perc.btw100010000*100, col = "darkgreen")
points(HI.gov$year, HI.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(HI.lower$year, HI.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "HI, >$10,000")
points(HI.lower$year, HI.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(HI.upper$year, HI.upper$perc.grt10000*100, col = "red")
points(HI.upper$year, HI.upper$perc.grt10000*100, col = "red", pch = 16)
lines(HI.gov$year, HI.gov$perc.grt10000*100, col = "darkgreen")
points(HI.gov$year, HI.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     







plot(ID.lower$year, ID.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "ID, Unitemized")
points(ID.lower$year, ID.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(ID.upper$year, ID.upper$perc.unitemized*100, col = "red")
points(ID.upper$year, ID.upper$perc.unitemized*100, col = "red", pch = 16)
lines(ID.gov$year, ID.gov$perc.unitemized*100, col = "darkgreen")
points(ID.gov$year, ID.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(ID.lower$year, ID.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "ID, <$100")
points(ID.lower$year, ID.lower$perc.less100*100, col = "blue", pch = 16)
lines(ID.upper$year, ID.upper$perc.less100*100, col = "red")
points(ID.upper$year, ID.upper$perc.less100*100, col = "red", pch = 16)
lines(ID.gov$year, ID.gov$perc.less100*100, col = "darkgreen")
points(ID.gov$year, ID.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(ID.lower$year, ID.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "ID, $100-$500")
points(ID.lower$year, ID.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(ID.upper$year, ID.upper$perc.btw100500*100, col = "red")
points(ID.upper$year, ID.upper$perc.btw100500*100, col = "red", pch = 16)
lines(ID.gov$year, ID.gov$perc.btw100500*100, col = "darkgreen")
points(ID.gov$year, ID.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(ID.lower$year, ID.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "ID, $500-$1,000")
points(ID.lower$year, ID.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(ID.upper$year, ID.upper$perc.btw5001000*100, col = "red")
points(ID.upper$year, ID.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(ID.gov$year, ID.gov$perc.btw5001000*100, col = "darkgreen")
points(ID.gov$year, ID.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(ID.lower$year, ID.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "ID, $1,000-$10,000")
points(ID.lower$year, ID.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(ID.upper$year, ID.upper$perc.btw100010000*100, col = "red")
points(ID.upper$year, ID.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(ID.gov$year, ID.gov$perc.btw100010000*100, col = "darkgreen")
points(ID.gov$year, ID.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(ID.lower$year, ID.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "ID, >$10,000")
points(ID.lower$year, ID.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(ID.upper$year, ID.upper$perc.grt10000*100, col = "red")
points(ID.upper$year, ID.upper$perc.grt10000*100, col = "red", pch = 16)
lines(ID.gov$year, ID.gov$perc.grt10000*100, col = "darkgreen")
points(ID.gov$year, ID.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
























par(mfrow=c(3, 6)) #Establish aesthetic parameters of the figure

plot(IL.lower$year, IL.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "IL, Unitemized")
points(IL.lower$year, IL.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(IL.upper$year, IL.upper$perc.unitemized*100, col = "red")
points(IL.upper$year, IL.upper$perc.unitemized*100, col = "red", pch = 16)
lines(IL.gov$year, IL.gov$perc.unitemized*100, col = "darkgreen")
points(IL.gov$year, IL.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(IL.lower$year, IL.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "IL, <$100")
points(IL.lower$year, IL.lower$perc.less100*100, col = "blue", pch = 16)
lines(IL.upper$year, IL.upper$perc.less100*100, col = "red")
points(IL.upper$year, IL.upper$perc.less100*100, col = "red", pch = 16)
lines(IL.gov$year, IL.gov$perc.less100*100, col = "darkgreen")
points(IL.gov$year, IL.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(IL.lower$year, IL.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "IL, $100-$500")
points(IL.lower$year, IL.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(IL.upper$year, IL.upper$perc.btw100500*100, col = "red")
points(IL.upper$year, IL.upper$perc.btw100500*100, col = "red", pch = 16)
lines(IL.gov$year, IL.gov$perc.btw100500*100, col = "darkgreen")
points(IL.gov$year, IL.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(IL.lower$year, IL.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "IL, $500-$1,000")
points(IL.lower$year, IL.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(IL.upper$year, IL.upper$perc.btw5001000*100, col = "red")
points(IL.upper$year, IL.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(IL.gov$year, IL.gov$perc.btw5001000*100, col = "darkgreen")
points(IL.gov$year, IL.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(IL.lower$year, IL.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "IL, $1,000-$10,000")
points(IL.lower$year, IL.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(IL.upper$year, IL.upper$perc.btw100010000*100, col = "red")
points(IL.upper$year, IL.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(IL.gov$year, IL.gov$perc.btw100010000*100, col = "darkgreen")
points(IL.gov$year, IL.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(IL.lower$year, IL.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "IL, >$10,000")
points(IL.lower$year, IL.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(IL.upper$year, IL.upper$perc.grt10000*100, col = "red")
points(IL.upper$year, IL.upper$perc.grt10000*100, col = "red", pch = 16)
lines(IL.gov$year, IL.gov$perc.grt10000*100, col = "darkgreen")
points(IL.gov$year, IL.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






plot(IN.lower$year, IN.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "IN, Unitemized")
points(IN.lower$year, IN.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(IN.upper$year, IN.upper$perc.unitemized*100, col = "red")
points(IN.upper$year, IN.upper$perc.unitemized*100, col = "red", pch = 16)
lines(IN.gov$year, IN.gov$perc.unitemized*100, col = "darkgreen")
points(IN.gov$year, IN.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(IN.lower$year, IN.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "IN, <$100")
points(IN.lower$year, IN.lower$perc.less100*100, col = "blue", pch = 16)
lines(IN.upper$year, IN.upper$perc.less100*100, col = "red")
points(IN.upper$year, IN.upper$perc.less100*100, col = "red", pch = 16)
lines(IN.gov$year, IN.gov$perc.less100*100, col = "darkgreen")
points(IN.gov$year, IN.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(IN.lower$year, IN.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "IN, $100-$500")
points(IN.lower$year, IN.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(IN.upper$year, IN.upper$perc.btw100500*100, col = "red")
points(IN.upper$year, IN.upper$perc.btw100500*100, col = "red", pch = 16)
lines(IN.gov$year, IN.gov$perc.btw100500*100, col = "darkgreen")
points(IN.gov$year, IN.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(IN.lower$year, IN.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "IN, $500-$1,000")
points(IN.lower$year, IN.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(IN.upper$year, IN.upper$perc.btw5001000*100, col = "red")
points(IN.upper$year, IN.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(IN.gov$year, IN.gov$perc.btw5001000*100, col = "darkgreen")
points(IN.gov$year, IN.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(IN.lower$year, IN.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "IN, $1,000-$10,000")
points(IN.lower$year, IN.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(IN.upper$year, IN.upper$perc.btw100010000*100, col = "red")
points(IN.upper$year, IN.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(IN.gov$year, IN.gov$perc.btw100010000*100, col = "darkgreen")
points(IN.gov$year, IN.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(IN.lower$year, IN.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "IN, >$10,000")
points(IN.lower$year, IN.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(IN.upper$year, IN.upper$perc.grt10000*100, col = "red")
points(IN.upper$year, IN.upper$perc.grt10000*100, col = "red", pch = 16)
lines(IN.gov$year, IN.gov$perc.grt10000*100, col = "darkgreen")
points(IN.gov$year, IN.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     





IA.lower <- subset(IA.lower, year != 2015)
IA.upper <- subset(IA.upper, year != 2015)
IA.gov <- subset(IA.gov, year != 2015)

plot(IA.lower$year, IA.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "IA, Unitemized")
points(IA.lower$year, IA.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(IA.upper$year, IA.upper$perc.unitemized*100, col = "red")
points(IA.upper$year, IA.upper$perc.unitemized*100, col = "red", pch = 16)
lines(IA.gov$year, IA.gov$perc.unitemized*100, col = "darkgreen")
points(IA.gov$year, IA.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(IA.lower$year, IA.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "IA, <$100")
points(IA.lower$year, IA.lower$perc.less100*100, col = "blue", pch = 16)
lines(IA.upper$year, IA.upper$perc.less100*100, col = "red")
points(IA.upper$year, IA.upper$perc.less100*100, col = "red", pch = 16)
lines(IA.gov$year, IA.gov$perc.less100*100, col = "darkgreen")
points(IA.gov$year, IA.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(IA.lower$year, IA.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "IA, $100-$500")
points(IA.lower$year, IA.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(IA.upper$year, IA.upper$perc.btw100500*100, col = "red")
points(IA.upper$year, IA.upper$perc.btw100500*100, col = "red", pch = 16)
lines(IA.gov$year, IA.gov$perc.btw100500*100, col = "darkgreen")
points(IA.gov$year, IA.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(IA.lower$year, IA.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "IA, $500-$1,000")
points(IA.lower$year, IA.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(IA.upper$year, IA.upper$perc.btw5001000*100, col = "red")
points(IA.upper$year, IA.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(IA.gov$year, IA.gov$perc.btw5001000*100, col = "darkgreen")
points(IA.gov$year, IA.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(IA.lower$year, IA.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "IA, $1,000-$10,000")
points(IA.lower$year, IA.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(IA.upper$year, IA.upper$perc.btw100010000*100, col = "red")
points(IA.upper$year, IA.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(IA.gov$year, IA.gov$perc.btw100010000*100, col = "darkgreen")
points(IA.gov$year, IA.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(IA.lower$year, IA.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "IA, >$10,000")
points(IA.lower$year, IA.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(IA.upper$year, IA.upper$perc.grt10000*100, col = "red")
points(IA.upper$year, IA.upper$perc.grt10000*100, col = "red", pch = 16)
lines(IA.gov$year, IA.gov$perc.grt10000*100, col = "darkgreen")
points(IA.gov$year, IA.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
























par(mfrow=c(3, 6)) #Establish aesthetic parameters of the figure

plot(KS.lower$year, KS.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "KS, Unitemized")
points(KS.lower$year, KS.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(KS.upper$year, KS.upper$perc.unitemized*100, col = "red")
points(KS.upper$year, KS.upper$perc.unitemized*100, col = "red", pch = 16)
lines(KS.gov$year, KS.gov$perc.unitemized*100, col = "darkgreen")
points(KS.gov$year, KS.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(KS.lower$year, KS.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "KS, <$100")
points(KS.lower$year, KS.lower$perc.less100*100, col = "blue", pch = 16)
lines(KS.upper$year, KS.upper$perc.less100*100, col = "red")
points(KS.upper$year, KS.upper$perc.less100*100, col = "red", pch = 16)
lines(KS.gov$year, KS.gov$perc.less100*100, col = "darkgreen")
points(KS.gov$year, KS.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(KS.lower$year, KS.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "KS, $100-$500")
points(KS.lower$year, KS.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(KS.upper$year, KS.upper$perc.btw100500*100, col = "red")
points(KS.upper$year, KS.upper$perc.btw100500*100, col = "red", pch = 16)
lines(KS.gov$year, KS.gov$perc.btw100500*100, col = "darkgreen")
points(KS.gov$year, KS.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(KS.lower$year, KS.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "KS, $500-$1,000")
points(KS.lower$year, KS.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(KS.upper$year, KS.upper$perc.btw5001000*100, col = "red")
points(KS.upper$year, KS.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(KS.gov$year, KS.gov$perc.btw5001000*100, col = "darkgreen")
points(KS.gov$year, KS.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(KS.lower$year, KS.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "KS, $1,000-$10,000")
points(KS.lower$year, KS.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(KS.upper$year, KS.upper$perc.btw100010000*100, col = "red")
points(KS.upper$year, KS.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(KS.gov$year, KS.gov$perc.btw100010000*100, col = "darkgreen")
points(KS.gov$year, KS.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(KS.lower$year, KS.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "KS, >$10,000")
points(KS.lower$year, KS.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(KS.upper$year, KS.upper$perc.grt10000*100, col = "red")
points(KS.upper$year, KS.upper$perc.grt10000*100, col = "red", pch = 16)
lines(KS.gov$year, KS.gov$perc.grt10000*100, col = "darkgreen")
points(KS.gov$year, KS.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






plot(KY.lower$year, KY.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "KY, Unitemized")
points(KY.lower$year, KY.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(KY.upper$year, KY.upper$perc.unitemized*100, col = "red")
points(KY.upper$year, KY.upper$perc.unitemized*100, col = "red", pch = 16)
lines(KY.gov$year, KY.gov$perc.unitemized*100, col = "darkgreen")
points(KY.gov$year, KY.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(KY.lower$year, KY.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "KY, <$100")
points(KY.lower$year, KY.lower$perc.less100*100, col = "blue", pch = 16)
lines(KY.upper$year, KY.upper$perc.less100*100, col = "red")
points(KY.upper$year, KY.upper$perc.less100*100, col = "red", pch = 16)
lines(KY.gov$year, KY.gov$perc.less100*100, col = "darkgreen")
points(KY.gov$year, KY.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(KY.lower$year, KY.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "KY, $100-$500")
points(KY.lower$year, KY.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(KY.upper$year, KY.upper$perc.btw100500*100, col = "red")
points(KY.upper$year, KY.upper$perc.btw100500*100, col = "red", pch = 16)
lines(KY.gov$year, KY.gov$perc.btw100500*100, col = "darkgreen")
points(KY.gov$year, KY.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(KY.lower$year, KY.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "KY, $500-$1,000")
points(KY.lower$year, KY.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(KY.upper$year, KY.upper$perc.btw5001000*100, col = "red")
points(KY.upper$year, KY.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(KY.gov$year, KY.gov$perc.btw5001000*100, col = "darkgreen")
points(KY.gov$year, KY.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(KY.lower$year, KY.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "KY, $1,000-$10,000")
points(KY.lower$year, KY.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(KY.upper$year, KY.upper$perc.btw100010000*100, col = "red")
points(KY.upper$year, KY.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(KY.gov$year, KY.gov$perc.btw100010000*100, col = "darkgreen")
points(KY.gov$year, KY.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(KY.lower$year, KY.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "KY, >$10,000")
points(KY.lower$year, KY.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(KY.upper$year, KY.upper$perc.grt10000*100, col = "red")
points(KY.upper$year, KY.upper$perc.grt10000*100, col = "red", pch = 16)
lines(KY.gov$year, KY.gov$perc.grt10000*100, col = "darkgreen")
points(KY.gov$year, KY.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     







plot(LA.lower$year, LA.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "LA, Unitemized")
points(LA.lower$year, LA.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(LA.upper$year, LA.upper$perc.unitemized*100, col = "red")
points(LA.upper$year, LA.upper$perc.unitemized*100, col = "red", pch = 16)
lines(LA.gov$year, LA.gov$perc.unitemized*100, col = "darkgreen")
points(LA.gov$year, LA.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(LA.lower$year, LA.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "LA, <$100")
points(LA.lower$year, LA.lower$perc.less100*100, col = "blue", pch = 16)
lines(LA.upper$year, LA.upper$perc.less100*100, col = "red")
points(LA.upper$year, LA.upper$perc.less100*100, col = "red", pch = 16)
lines(LA.gov$year, LA.gov$perc.less100*100, col = "darkgreen")
points(LA.gov$year, LA.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(LA.lower$year, LA.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "LA, $100-$500")
points(LA.lower$year, LA.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(LA.upper$year, LA.upper$perc.btw100500*100, col = "red")
points(LA.upper$year, LA.upper$perc.btw100500*100, col = "red", pch = 16)
lines(LA.gov$year, LA.gov$perc.btw100500*100, col = "darkgreen")
points(LA.gov$year, LA.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(LA.lower$year, LA.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "LA, $500-$1,000")
points(LA.lower$year, LA.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(LA.upper$year, LA.upper$perc.btw5001000*100, col = "red")
points(LA.upper$year, LA.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(LA.gov$year, LA.gov$perc.btw5001000*100, col = "darkgreen")
points(LA.gov$year, LA.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(LA.lower$year, LA.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "LA, $1,000-$10,000")
points(LA.lower$year, LA.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(LA.upper$year, LA.upper$perc.btw100010000*100, col = "red")
points(LA.upper$year, LA.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(LA.gov$year, LA.gov$perc.btw100010000*100, col = "darkgreen")
points(LA.gov$year, LA.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(LA.lower$year, LA.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "LA, >$10,000")
points(LA.lower$year, LA.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(LA.upper$year, LA.upper$perc.grt10000*100, col = "red")
points(LA.upper$year, LA.upper$perc.grt10000*100, col = "red", pch = 16)
lines(LA.gov$year, LA.gov$perc.grt10000*100, col = "darkgreen")
points(LA.gov$year, LA.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

























par(mfrow=c(3, 6)) #Establish aesthetic parameters of the figure

plot(ME.lower$year, ME.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "ME, Unitemized")
points(ME.lower$year, ME.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(ME.upper$year, ME.upper$perc.unitemized*100, col = "red")
points(ME.upper$year, ME.upper$perc.unitemized*100, col = "red", pch = 16)
lines(ME.gov$year, ME.gov$perc.unitemized*100, col = "darkgreen")
points(ME.gov$year, ME.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(ME.lower$year, ME.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "ME, <$100")
points(ME.lower$year, ME.lower$perc.less100*100, col = "blue", pch = 16)
lines(ME.upper$year, ME.upper$perc.less100*100, col = "red")
points(ME.upper$year, ME.upper$perc.less100*100, col = "red", pch = 16)
lines(ME.gov$year, ME.gov$perc.less100*100, col = "darkgreen")
points(ME.gov$year, ME.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(ME.lower$year, ME.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "ME, $100-$500")
points(ME.lower$year, ME.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(ME.upper$year, ME.upper$perc.btw100500*100, col = "red")
points(ME.upper$year, ME.upper$perc.btw100500*100, col = "red", pch = 16)
lines(ME.gov$year, ME.gov$perc.btw100500*100, col = "darkgreen")
points(ME.gov$year, ME.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(ME.lower$year, ME.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "ME, $500-$1,000")
points(ME.lower$year, ME.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(ME.upper$year, ME.upper$perc.btw5001000*100, col = "red")
points(ME.upper$year, ME.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(ME.gov$year, ME.gov$perc.btw5001000*100, col = "darkgreen")
points(ME.gov$year, ME.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(ME.lower$year, ME.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "ME, $1,000-$10,000")
points(ME.lower$year, ME.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(ME.upper$year, ME.upper$perc.btw100010000*100, col = "red")
points(ME.upper$year, ME.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(ME.gov$year, ME.gov$perc.btw100010000*100, col = "darkgreen")
points(ME.gov$year, ME.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(ME.lower$year, ME.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "ME, >$10,000")
points(ME.lower$year, ME.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(ME.upper$year, ME.upper$perc.grt10000*100, col = "red")
points(ME.upper$year, ME.upper$perc.grt10000*100, col = "red", pch = 16)
lines(ME.gov$year, ME.gov$perc.grt10000*100, col = "darkgreen")
points(ME.gov$year, ME.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






plot(MD.lower$year, MD.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MD, Unitemized")
points(MD.lower$year, MD.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(MD.upper$year, MD.upper$perc.unitemized*100, col = "red")
points(MD.upper$year, MD.upper$perc.unitemized*100, col = "red", pch = 16)
lines(MD.gov$year, MD.gov$perc.unitemized*100, col = "darkgreen")
points(MD.gov$year, MD.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(MD.lower$year, MD.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MD, <$100")
points(MD.lower$year, MD.lower$perc.less100*100, col = "blue", pch = 16)
lines(MD.upper$year, MD.upper$perc.less100*100, col = "red")
points(MD.upper$year, MD.upper$perc.less100*100, col = "red", pch = 16)
lines(MD.gov$year, MD.gov$perc.less100*100, col = "darkgreen")
points(MD.gov$year, MD.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MD.lower$year, MD.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MD, $100-$500")
points(MD.lower$year, MD.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(MD.upper$year, MD.upper$perc.btw100500*100, col = "red")
points(MD.upper$year, MD.upper$perc.btw100500*100, col = "red", pch = 16)
lines(MD.gov$year, MD.gov$perc.btw100500*100, col = "darkgreen")
points(MD.gov$year, MD.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MD.lower$year, MD.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MD, $500-$1,000")
points(MD.lower$year, MD.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(MD.upper$year, MD.upper$perc.btw5001000*100, col = "red")
points(MD.upper$year, MD.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(MD.gov$year, MD.gov$perc.btw5001000*100, col = "darkgreen")
points(MD.gov$year, MD.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MD.lower$year, MD.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MD, $1,000-$10,000")
points(MD.lower$year, MD.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(MD.upper$year, MD.upper$perc.btw100010000*100, col = "red")
points(MD.upper$year, MD.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(MD.gov$year, MD.gov$perc.btw100010000*100, col = "darkgreen")
points(MD.gov$year, MD.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MD.lower$year, MD.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MD, >$10,000")
points(MD.lower$year, MD.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(MD.upper$year, MD.upper$perc.grt10000*100, col = "red")
points(MD.upper$year, MD.upper$perc.grt10000*100, col = "red", pch = 16)
lines(MD.gov$year, MD.gov$perc.grt10000*100, col = "darkgreen")
points(MD.gov$year, MD.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     







plot(MA.lower$year, MA.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "MA, Unitemized")
points(MA.lower$year, MA.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(MA.upper$year, MA.upper$perc.unitemized*100, col = "red")
points(MA.upper$year, MA.upper$perc.unitemized*100, col = "red", pch = 16)
lines(MA.gov$year, MA.gov$perc.unitemized*100, col = "darkgreen")
points(MA.gov$year, MA.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(MA.lower$year, MA.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "MA, <$100")
points(MA.lower$year, MA.lower$perc.less100*100, col = "blue", pch = 16)
lines(MA.upper$year, MA.upper$perc.less100*100, col = "red")
points(MA.upper$year, MA.upper$perc.less100*100, col = "red", pch = 16)
lines(MA.gov$year, MA.gov$perc.less100*100, col = "darkgreen")
points(MA.gov$year, MA.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MA.lower$year, MA.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "MA, $100-$500")
points(MA.lower$year, MA.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(MA.upper$year, MA.upper$perc.btw100500*100, col = "red")
points(MA.upper$year, MA.upper$perc.btw100500*100, col = "red", pch = 16)
lines(MA.gov$year, MA.gov$perc.btw100500*100, col = "darkgreen")
points(MA.gov$year, MA.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MA.lower$year, MA.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "MA, $500-$1,000")
points(MA.lower$year, MA.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(MA.upper$year, MA.upper$perc.btw5001000*100, col = "red")
points(MA.upper$year, MA.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(MA.gov$year, MA.gov$perc.btw5001000*100, col = "darkgreen")
points(MA.gov$year, MA.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MA.lower$year, MA.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "MA, $1,000-$10,000")
points(MA.lower$year, MA.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(MA.upper$year, MA.upper$perc.btw100010000*100, col = "red")
points(MA.upper$year, MA.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(MA.gov$year, MA.gov$perc.btw100010000*100, col = "darkgreen")
points(MA.gov$year, MA.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MA.lower$year, MA.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "MA, >$10,000")
points(MA.lower$year, MA.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(MA.upper$year, MA.upper$perc.grt10000*100, col = "red")
points(MA.upper$year, MA.upper$perc.grt10000*100, col = "red", pch = 16)
lines(MA.gov$year, MA.gov$perc.grt10000*100, col = "darkgreen")
points(MA.gov$year, MA.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

























par(mfrow=c(3, 6)) #Establish aesthetic parameters of the figure

plot(MI.lower$year, MI.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "MI, Unitemized")
points(MI.lower$year, MI.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(MI.upper$year, MI.upper$perc.unitemized*100, col = "red")
points(MI.upper$year, MI.upper$perc.unitemized*100, col = "red", pch = 16)
lines(MI.gov$year, MI.gov$perc.unitemized*100, col = "darkgreen")
points(MI.gov$year, MI.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(MI.lower$year, MI.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "MI, <$100")
points(MI.lower$year, MI.lower$perc.less100*100, col = "blue", pch = 16)
lines(MI.upper$year, MI.upper$perc.less100*100, col = "red")
points(MI.upper$year, MI.upper$perc.less100*100, col = "red", pch = 16)
lines(MI.gov$year, MI.gov$perc.less100*100, col = "darkgreen")
points(MI.gov$year, MI.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MI.lower$year, MI.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "MI, $100-$500")
points(MI.lower$year, MI.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(MI.upper$year, MI.upper$perc.btw100500*100, col = "red")
points(MI.upper$year, MI.upper$perc.btw100500*100, col = "red", pch = 16)
lines(MI.gov$year, MI.gov$perc.btw100500*100, col = "darkgreen")
points(MI.gov$year, MI.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MI.lower$year, MI.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "MI, $500-$1,000")
points(MI.lower$year, MI.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(MI.upper$year, MI.upper$perc.btw5001000*100, col = "red")
points(MI.upper$year, MI.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(MI.gov$year, MI.gov$perc.btw5001000*100, col = "darkgreen")
points(MI.gov$year, MI.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MI.lower$year, MI.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "MI, $1,000-$10,000")
points(MI.lower$year, MI.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(MI.upper$year, MI.upper$perc.btw100010000*100, col = "red")
points(MI.upper$year, MI.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(MI.gov$year, MI.gov$perc.btw100010000*100, col = "darkgreen")
points(MI.gov$year, MI.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MI.lower$year, MI.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "MI, >$10,000")
points(MI.lower$year, MI.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(MI.upper$year, MI.upper$perc.grt10000*100, col = "red")
points(MI.upper$year, MI.upper$perc.grt10000*100, col = "red", pch = 16)
lines(MI.gov$year, MI.gov$perc.grt10000*100, col = "darkgreen")
points(MI.gov$year, MI.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






plot(MN.lower$year, MN.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 65), xlab = "Year", ylab = "Percent", main = "MN, Unitemized")
points(MN.lower$year, MN.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(MN.upper$year, MN.upper$perc.unitemized*100, col = "red")
points(MN.upper$year, MN.upper$perc.unitemized*100, col = "red", pch = 16)
lines(MN.gov$year, MN.gov$perc.unitemized*100, col = "darkgreen")
points(MN.gov$year, MN.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(MN.lower$year, MN.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 65), xlab = "Year", ylab = "Percent", main = "MN, <$100")
points(MN.lower$year, MN.lower$perc.less100*100, col = "blue", pch = 16)
lines(MN.upper$year, MN.upper$perc.less100*100, col = "red")
points(MN.upper$year, MN.upper$perc.less100*100, col = "red", pch = 16)
lines(MN.gov$year, MN.gov$perc.less100*100, col = "darkgreen")
points(MN.gov$year, MN.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MN.lower$year, MN.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 65), xlab = "Year", ylab = "Percent", main = "MN, $100-$500")
points(MN.lower$year, MN.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(MN.upper$year, MN.upper$perc.btw100500*100, col = "red")
points(MN.upper$year, MN.upper$perc.btw100500*100, col = "red", pch = 16)
lines(MN.gov$year, MN.gov$perc.btw100500*100, col = "darkgreen")
points(MN.gov$year, MN.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MN.lower$year, MN.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 65), xlab = "Year", ylab = "Percent", main = "MN, $500-$1,000")
points(MN.lower$year, MN.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(MN.upper$year, MN.upper$perc.btw5001000*100, col = "red")
points(MN.upper$year, MN.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(MN.gov$year, MN.gov$perc.btw5001000*100, col = "darkgreen")
points(MN.gov$year, MN.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MN.lower$year, MN.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 65), xlab = "Year", ylab = "Percent", main = "MN, $1,000-$10,000")
points(MN.lower$year, MN.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(MN.upper$year, MN.upper$perc.btw100010000*100, col = "red")
points(MN.upper$year, MN.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(MN.gov$year, MN.gov$perc.btw100010000*100, col = "darkgreen")
points(MN.gov$year, MN.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MN.lower$year, MN.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 65), xlab = "Year", ylab = "Percent", main = "MN, >$10,000")
points(MN.lower$year, MN.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(MN.upper$year, MN.upper$perc.grt10000*100, col = "red")
points(MN.upper$year, MN.upper$perc.grt10000*100, col = "red", pch = 16)
lines(MN.gov$year, MN.gov$perc.grt10000*100, col = "darkgreen")
points(MN.gov$year, MN.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     







plot(MS.lower$year, MS.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MS, Unitemized")
points(MS.lower$year, MS.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(MS.upper$year, MS.upper$perc.unitemized*100, col = "red")
points(MS.upper$year, MS.upper$perc.unitemized*100, col = "red", pch = 16)
lines(MS.gov$year, MS.gov$perc.unitemized*100, col = "darkgreen")
points(MS.gov$year, MS.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(MS.lower$year, MS.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MS, <$100")
points(MS.lower$year, MS.lower$perc.less100*100, col = "blue", pch = 16)
lines(MS.upper$year, MS.upper$perc.less100*100, col = "red")
points(MS.upper$year, MS.upper$perc.less100*100, col = "red", pch = 16)
lines(MS.gov$year, MS.gov$perc.less100*100, col = "darkgreen")
points(MS.gov$year, MS.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MS.lower$year, MS.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MS, $100-$500")
points(MS.lower$year, MS.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(MS.upper$year, MS.upper$perc.btw100500*100, col = "red")
points(MS.upper$year, MS.upper$perc.btw100500*100, col = "red", pch = 16)
lines(MS.gov$year, MS.gov$perc.btw100500*100, col = "darkgreen")
points(MS.gov$year, MS.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MS.lower$year, MS.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MS, $500-$1,000")
points(MS.lower$year, MS.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(MS.upper$year, MS.upper$perc.btw5001000*100, col = "red")
points(MS.upper$year, MS.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(MS.gov$year, MS.gov$perc.btw5001000*100, col = "darkgreen")
points(MS.gov$year, MS.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MS.lower$year, MS.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MS, $1,000-$10,000")
points(MS.lower$year, MS.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(MS.upper$year, MS.upper$perc.btw100010000*100, col = "red")
points(MS.upper$year, MS.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(MS.gov$year, MS.gov$perc.btw100010000*100, col = "darkgreen")
points(MS.gov$year, MS.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MS.lower$year, MS.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MS, >$10,000")
points(MS.lower$year, MS.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(MS.upper$year, MS.upper$perc.grt10000*100, col = "red")
points(MS.upper$year, MS.upper$perc.grt10000*100, col = "red", pch = 16)
lines(MS.gov$year, MS.gov$perc.grt10000*100, col = "darkgreen")
points(MS.gov$year, MS.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

























par(mfrow=c(3, 6)) #Establish aesthetic parameters of the figure

plot(MO.lower$year, MO.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 90), xlab = "Year", ylab = "Percent", main = "MO, Unitemized")
points(MO.lower$year, MO.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(MO.upper$year, MO.upper$perc.unitemized*100, col = "red")
points(MO.upper$year, MO.upper$perc.unitemized*100, col = "red", pch = 16)
lines(MO.gov$year, MO.gov$perc.unitemized*100, col = "darkgreen")
points(MO.gov$year, MO.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(MO.lower$year, MO.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 90), xlab = "Year", ylab = "Percent", main = "MO, <$100")
points(MO.lower$year, MO.lower$perc.less100*100, col = "blue", pch = 16)
lines(MO.upper$year, MO.upper$perc.less100*100, col = "red")
points(MO.upper$year, MO.upper$perc.less100*100, col = "red", pch = 16)
lines(MO.gov$year, MO.gov$perc.less100*100, col = "darkgreen")
points(MO.gov$year, MO.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MO.lower$year, MO.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 90), xlab = "Year", ylab = "Percent", main = "MO, $100-$500")
points(MO.lower$year, MO.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(MO.upper$year, MO.upper$perc.btw100500*100, col = "red")
points(MO.upper$year, MO.upper$perc.btw100500*100, col = "red", pch = 16)
lines(MO.gov$year, MO.gov$perc.btw100500*100, col = "darkgreen")
points(MO.gov$year, MO.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MO.lower$year, MO.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 90), xlab = "Year", ylab = "Percent", main = "MO, $500-$1,000")
points(MO.lower$year, MO.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(MO.upper$year, MO.upper$perc.btw5001000*100, col = "red")
points(MO.upper$year, MO.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(MO.gov$year, MO.gov$perc.btw5001000*100, col = "darkgreen")
points(MO.gov$year, MO.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MO.lower$year, MO.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 90), xlab = "Year", ylab = "Percent", main = "MO, $1,000-$10,000")
points(MO.lower$year, MO.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(MO.upper$year, MO.upper$perc.btw100010000*100, col = "red")
points(MO.upper$year, MO.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(MO.gov$year, MO.gov$perc.btw100010000*100, col = "darkgreen")
points(MO.gov$year, MO.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MO.lower$year, MO.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 90), xlab = "Year", ylab = "Percent", main = "MO, >$10,000")
points(MO.lower$year, MO.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(MO.upper$year, MO.upper$perc.grt10000*100, col = "red")
points(MO.upper$year, MO.upper$perc.grt10000*100, col = "red", pch = 16)
lines(MO.gov$year, MO.gov$perc.grt10000*100, col = "darkgreen")
points(MO.gov$year, MO.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






plot(MT.lower$year, MT.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "MT, Unitemized")
points(MT.lower$year, MT.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(MT.upper$year, MT.upper$perc.unitemized*100, col = "red")
points(MT.upper$year, MT.upper$perc.unitemized*100, col = "red", pch = 16)
lines(MT.gov$year, MT.gov$perc.unitemized*100, col = "darkgreen")
points(MT.gov$year, MT.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(MT.lower$year, MT.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "MT, <$100")
points(MT.lower$year, MT.lower$perc.less100*100, col = "blue", pch = 16)
lines(MT.upper$year, MT.upper$perc.less100*100, col = "red")
points(MT.upper$year, MT.upper$perc.less100*100, col = "red", pch = 16)
lines(MT.gov$year, MT.gov$perc.less100*100, col = "darkgreen")
points(MT.gov$year, MT.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MT.lower$year, MT.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "MT, $100-$500")
points(MT.lower$year, MT.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(MT.upper$year, MT.upper$perc.btw100500*100, col = "red")
points(MT.upper$year, MT.upper$perc.btw100500*100, col = "red", pch = 16)
lines(MT.gov$year, MT.gov$perc.btw100500*100, col = "darkgreen")
points(MT.gov$year, MT.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MT.lower$year, MT.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "MT, $500-$1,000")
points(MT.lower$year, MT.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(MT.upper$year, MT.upper$perc.btw5001000*100, col = "red")
points(MT.upper$year, MT.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(MT.gov$year, MT.gov$perc.btw5001000*100, col = "darkgreen")
points(MT.gov$year, MT.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MT.lower$year, MT.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "MT, $1,000-$10,000")
points(MT.lower$year, MT.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(MT.upper$year, MT.upper$perc.btw100010000*100, col = "red")
points(MT.upper$year, MT.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(MT.gov$year, MT.gov$perc.btw100010000*100, col = "darkgreen")
points(MT.gov$year, MT.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MT.lower$year, MT.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "MT, >$10,000")
points(MT.lower$year, MT.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(MT.upper$year, MT.upper$perc.grt10000*100, col = "red")
points(MT.upper$year, MT.upper$perc.grt10000*100, col = "red", pch = 16)
lines(MT.gov$year, MT.gov$perc.grt10000*100, col = "darkgreen")
points(MT.gov$year, MT.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     







plot(NE.lower$year, NE.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NE, Unitemized")
points(NE.lower$year, NE.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(NE.upper$year, NE.upper$perc.unitemized*100, col = "red")
points(NE.upper$year, NE.upper$perc.unitemized*100, col = "red", pch = 16)
lines(NE.gov$year, NE.gov$perc.unitemized*100, col = "darkgreen")
points(NE.gov$year, NE.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(NE.lower$year, NE.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NE, <$100")
points(NE.lower$year, NE.lower$perc.less100*100, col = "blue", pch = 16)
lines(NE.upper$year, NE.upper$perc.less100*100, col = "red")
points(NE.upper$year, NE.upper$perc.less100*100, col = "red", pch = 16)
lines(NE.gov$year, NE.gov$perc.less100*100, col = "darkgreen")
points(NE.gov$year, NE.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NE.lower$year, NE.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NE, $100-$500")
points(NE.lower$year, NE.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(NE.upper$year, NE.upper$perc.btw100500*100, col = "red")
points(NE.upper$year, NE.upper$perc.btw100500*100, col = "red", pch = 16)
lines(NE.gov$year, NE.gov$perc.btw100500*100, col = "darkgreen")
points(NE.gov$year, NE.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NE.lower$year, NE.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NE, $500-$1,000")
points(NE.lower$year, NE.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(NE.upper$year, NE.upper$perc.btw5001000*100, col = "red")
points(NE.upper$year, NE.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(NE.gov$year, NE.gov$perc.btw5001000*100, col = "darkgreen")
points(NE.gov$year, NE.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NE.lower$year, NE.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NE, $1,000-$10,000")
points(NE.lower$year, NE.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(NE.upper$year, NE.upper$perc.btw100010000*100, col = "red")
points(NE.upper$year, NE.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(NE.gov$year, NE.gov$perc.btw100010000*100, col = "darkgreen")
points(NE.gov$year, NE.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NE.lower$year, NE.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NE, >$10,000")
points(NE.lower$year, NE.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(NE.upper$year, NE.upper$perc.grt10000*100, col = "red")
points(NE.upper$year, NE.upper$perc.grt10000*100, col = "red", pch = 16)
lines(NE.gov$year, NE.gov$perc.grt10000*100, col = "darkgreen")
points(NE.gov$year, NE.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

























par(mfrow=c(3, 6)) #Establish aesthetic parameters of the figure

plot(ND.lower$year, ND.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "ND, Unitemized")
points(ND.lower$year, ND.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(ND.upper$year, ND.upper$perc.unitemized*100, col = "red")
points(ND.upper$year, ND.upper$perc.unitemized*100, col = "red", pch = 16)
lines(ND.gov$year, ND.gov$perc.unitemized*100, col = "darkgreen")
points(ND.gov$year, ND.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(ND.lower$year, ND.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "ND, <$100")
points(ND.lower$year, ND.lower$perc.less100*100, col = "blue", pch = 16)
lines(ND.upper$year, ND.upper$perc.less100*100, col = "red")
points(ND.upper$year, ND.upper$perc.less100*100, col = "red", pch = 16)
lines(ND.gov$year, ND.gov$perc.less100*100, col = "darkgreen")
points(ND.gov$year, ND.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(ND.lower$year, ND.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "ND, $100-$500")
points(ND.lower$year, ND.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(ND.upper$year, ND.upper$perc.btw100500*100, col = "red")
points(ND.upper$year, ND.upper$perc.btw100500*100, col = "red", pch = 16)
lines(ND.gov$year, ND.gov$perc.btw100500*100, col = "darkgreen")
points(ND.gov$year, ND.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(ND.lower$year, ND.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "ND, $500-$1,000")
points(ND.lower$year, ND.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(ND.upper$year, ND.upper$perc.btw5001000*100, col = "red")
points(ND.upper$year, ND.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(ND.gov$year, ND.gov$perc.btw5001000*100, col = "darkgreen")
points(ND.gov$year, ND.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(ND.lower$year, ND.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "ND, $1,000-$10,000")
points(ND.lower$year, ND.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(ND.upper$year, ND.upper$perc.btw100010000*100, col = "red")
points(ND.upper$year, ND.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(ND.gov$year, ND.gov$perc.btw100010000*100, col = "darkgreen")
points(ND.gov$year, ND.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(ND.lower$year, ND.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "ND, >$10,000")
points(ND.lower$year, ND.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(ND.upper$year, ND.upper$perc.grt10000*100, col = "red")
points(ND.upper$year, ND.upper$perc.grt10000*100, col = "red", pch = 16)
lines(ND.gov$year, ND.gov$perc.grt10000*100, col = "darkgreen")
points(ND.gov$year, ND.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






plot(OH.lower$year, OH.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "OH, Unitemized")
points(OH.lower$year, OH.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(OH.upper$year, OH.upper$perc.unitemized*100, col = "red")
points(OH.upper$year, OH.upper$perc.unitemized*100, col = "red", pch = 16)
lines(OH.gov$year, OH.gov$perc.unitemized*100, col = "darkgreen")
points(OH.gov$year, OH.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(OH.lower$year, OH.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "OH, <$100")
points(OH.lower$year, OH.lower$perc.less100*100, col = "blue", pch = 16)
lines(OH.upper$year, OH.upper$perc.less100*100, col = "red")
points(OH.upper$year, OH.upper$perc.less100*100, col = "red", pch = 16)
lines(OH.gov$year, OH.gov$perc.less100*100, col = "darkgreen")
points(OH.gov$year, OH.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(OH.lower$year, OH.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "OH, $100-$500")
points(OH.lower$year, OH.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(OH.upper$year, OH.upper$perc.btw100500*100, col = "red")
points(OH.upper$year, OH.upper$perc.btw100500*100, col = "red", pch = 16)
lines(OH.gov$year, OH.gov$perc.btw100500*100, col = "darkgreen")
points(OH.gov$year, OH.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(OH.lower$year, OH.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "OH, $500-$1,000")
points(OH.lower$year, OH.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(OH.upper$year, OH.upper$perc.btw5001000*100, col = "red")
points(OH.upper$year, OH.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(OH.gov$year, OH.gov$perc.btw5001000*100, col = "darkgreen")
points(OH.gov$year, OH.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(OH.lower$year, OH.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "OH, $1,000-$10,000")
points(OH.lower$year, OH.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(OH.upper$year, OH.upper$perc.btw100010000*100, col = "red")
points(OH.upper$year, OH.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(OH.gov$year, OH.gov$perc.btw100010000*100, col = "darkgreen")
points(OH.gov$year, OH.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(OH.lower$year, OH.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "OH, >$10,000")
points(OH.lower$year, OH.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(OH.upper$year, OH.upper$perc.grt10000*100, col = "red")
points(OH.upper$year, OH.upper$perc.grt10000*100, col = "red", pch = 16)
lines(OH.gov$year, OH.gov$perc.grt10000*100, col = "darkgreen")
points(OH.gov$year, OH.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     







plot(OK.lower$year, OK.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "OK, Unitemized")
points(OK.lower$year, OK.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(OK.upper$year, OK.upper$perc.unitemized*100, col = "red")
points(OK.upper$year, OK.upper$perc.unitemized*100, col = "red", pch = 16)
lines(OK.gov$year, OK.gov$perc.unitemized*100, col = "darkgreen")
points(OK.gov$year, OK.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(OK.lower$year, OK.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "OK, <$100")
points(OK.lower$year, OK.lower$perc.less100*100, col = "blue", pch = 16)
lines(OK.upper$year, OK.upper$perc.less100*100, col = "red")
points(OK.upper$year, OK.upper$perc.less100*100, col = "red", pch = 16)
lines(OK.gov$year, OK.gov$perc.less100*100, col = "darkgreen")
points(OK.gov$year, OK.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(OK.lower$year, OK.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "OK, $100-$500")
points(OK.lower$year, OK.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(OK.upper$year, OK.upper$perc.btw100500*100, col = "red")
points(OK.upper$year, OK.upper$perc.btw100500*100, col = "red", pch = 16)
lines(OK.gov$year, OK.gov$perc.btw100500*100, col = "darkgreen")
points(OK.gov$year, OK.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(OK.lower$year, OK.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "OK, $500-$1,000")
points(OK.lower$year, OK.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(OK.upper$year, OK.upper$perc.btw5001000*100, col = "red")
points(OK.upper$year, OK.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(OK.gov$year, OK.gov$perc.btw5001000*100, col = "darkgreen")
points(OK.gov$year, OK.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(OK.lower$year, OK.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "OK, $1,000-$10,000")
points(OK.lower$year, OK.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(OK.upper$year, OK.upper$perc.btw100010000*100, col = "red")
points(OK.upper$year, OK.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(OK.gov$year, OK.gov$perc.btw100010000*100, col = "darkgreen")
points(OK.gov$year, OK.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(OK.lower$year, OK.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "OK, >$10,000")
points(OK.lower$year, OK.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(OK.upper$year, OK.upper$perc.grt10000*100, col = "red")
points(OK.upper$year, OK.upper$perc.grt10000*100, col = "red", pch = 16)
lines(OK.gov$year, OK.gov$perc.grt10000*100, col = "darkgreen")
points(OK.gov$year, OK.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

























par(mfrow=c(3, 6)) #Establish aesthetic parameters of the figure

plot(NM.lower$year, NM.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NM, Unitemized")
points(NM.lower$year, NM.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(NM.upper$year, NM.upper$perc.unitemized*100, col = "red")
points(NM.upper$year, NM.upper$perc.unitemized*100, col = "red", pch = 16)
lines(NM.gov$year, NM.gov$perc.unitemized*100, col = "darkgreen")
points(NM.gov$year, NM.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(NM.lower$year, NM.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NM, <$100")
points(NM.lower$year, NM.lower$perc.less100*100, col = "blue", pch = 16)
lines(NM.upper$year, NM.upper$perc.less100*100, col = "red")
points(NM.upper$year, NM.upper$perc.less100*100, col = "red", pch = 16)
lines(NM.gov$year, NM.gov$perc.less100*100, col = "darkgreen")
points(NM.gov$year, NM.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NM.lower$year, NM.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NM, $100-$500")
points(NM.lower$year, NM.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(NM.upper$year, NM.upper$perc.btw100500*100, col = "red")
points(NM.upper$year, NM.upper$perc.btw100500*100, col = "red", pch = 16)
lines(NM.gov$year, NM.gov$perc.btw100500*100, col = "darkgreen")
points(NM.gov$year, NM.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NM.lower$year, NM.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NM, $500-$1,000")
points(NM.lower$year, NM.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(NM.upper$year, NM.upper$perc.btw5001000*100, col = "red")
points(NM.upper$year, NM.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(NM.gov$year, NM.gov$perc.btw5001000*100, col = "darkgreen")
points(NM.gov$year, NM.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NM.lower$year, NM.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NM, $1,000-$10,000")
points(NM.lower$year, NM.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(NM.upper$year, NM.upper$perc.btw100010000*100, col = "red")
points(NM.upper$year, NM.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(NM.gov$year, NM.gov$perc.btw100010000*100, col = "darkgreen")
points(NM.gov$year, NM.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NM.lower$year, NM.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NM, >$10,000")
points(NM.lower$year, NM.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(NM.upper$year, NM.upper$perc.grt10000*100, col = "red")
points(NM.upper$year, NM.upper$perc.grt10000*100, col = "red", pch = 16)
lines(NM.gov$year, NM.gov$perc.grt10000*100, col = "darkgreen")
points(NM.gov$year, NM.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






plot(NY.lower$year, NY.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NY, Unitemized")
points(NY.lower$year, NY.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(NY.upper$year, NY.upper$perc.unitemized*100, col = "red")
points(NY.upper$year, NY.upper$perc.unitemized*100, col = "red", pch = 16)
lines(NY.gov$year, NY.gov$perc.unitemized*100, col = "darkgreen")
points(NY.gov$year, NY.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(NY.lower$year, NY.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NY, <$100")
points(NY.lower$year, NY.lower$perc.less100*100, col = "blue", pch = 16)
lines(NY.upper$year, NY.upper$perc.less100*100, col = "red")
points(NY.upper$year, NY.upper$perc.less100*100, col = "red", pch = 16)
lines(NY.gov$year, NY.gov$perc.less100*100, col = "darkgreen")
points(NY.gov$year, NY.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NY.lower$year, NY.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NY, $100-$500")
points(NY.lower$year, NY.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(NY.upper$year, NY.upper$perc.btw100500*100, col = "red")
points(NY.upper$year, NY.upper$perc.btw100500*100, col = "red", pch = 16)
lines(NY.gov$year, NY.gov$perc.btw100500*100, col = "darkgreen")
points(NY.gov$year, NY.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NY.lower$year, NY.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NY, $500-$1,000")
points(NY.lower$year, NY.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(NY.upper$year, NY.upper$perc.btw5001000*100, col = "red")
points(NY.upper$year, NY.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(NY.gov$year, NY.gov$perc.btw5001000*100, col = "darkgreen")
points(NY.gov$year, NY.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NY.lower$year, NY.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NY, $1,000-$10,000")
points(NY.lower$year, NY.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(NY.upper$year, NY.upper$perc.btw100010000*100, col = "red")
points(NY.upper$year, NY.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(NY.gov$year, NY.gov$perc.btw100010000*100, col = "darkgreen")
points(NY.gov$year, NY.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NY.lower$year, NY.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NY, >$10,000")
points(NY.lower$year, NY.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(NY.upper$year, NY.upper$perc.grt10000*100, col = "red")
points(NY.upper$year, NY.upper$perc.grt10000*100, col = "red", pch = 16)
lines(NY.gov$year, NY.gov$perc.grt10000*100, col = "darkgreen")
points(NY.gov$year, NY.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     







plot(NC.lower$year, NC.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "NC, Unitemized")
points(NC.lower$year, NC.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(NC.upper$year, NC.upper$perc.unitemized*100, col = "red")
points(NC.upper$year, NC.upper$perc.unitemized*100, col = "red", pch = 16)
lines(NC.gov$year, NC.gov$perc.unitemized*100, col = "darkgreen")
points(NC.gov$year, NC.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(NC.lower$year, NC.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "NC, <$100")
points(NC.lower$year, NC.lower$perc.less100*100, col = "blue", pch = 16)
lines(NC.upper$year, NC.upper$perc.less100*100, col = "red")
points(NC.upper$year, NC.upper$perc.less100*100, col = "red", pch = 16)
lines(NC.gov$year, NC.gov$perc.less100*100, col = "darkgreen")
points(NC.gov$year, NC.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NC.lower$year, NC.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "NC, $100-$500")
points(NC.lower$year, NC.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(NC.upper$year, NC.upper$perc.btw100500*100, col = "red")
points(NC.upper$year, NC.upper$perc.btw100500*100, col = "red", pch = 16)
lines(NC.gov$year, NC.gov$perc.btw100500*100, col = "darkgreen")
points(NC.gov$year, NC.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NC.lower$year, NC.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "NC, $500-$1,000")
points(NC.lower$year, NC.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(NC.upper$year, NC.upper$perc.btw5001000*100, col = "red")
points(NC.upper$year, NC.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(NC.gov$year, NC.gov$perc.btw5001000*100, col = "darkgreen")
points(NC.gov$year, NC.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NC.lower$year, NC.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "NC, $1,000-$10,000")
points(NC.lower$year, NC.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(NC.upper$year, NC.upper$perc.btw100010000*100, col = "red")
points(NC.upper$year, NC.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(NC.gov$year, NC.gov$perc.btw100010000*100, col = "darkgreen")
points(NC.gov$year, NC.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NC.lower$year, NC.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "NC, >$10,000")
points(NC.lower$year, NC.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(NC.upper$year, NC.upper$perc.grt10000*100, col = "red")
points(NC.upper$year, NC.upper$perc.grt10000*100, col = "red", pch = 16)
lines(NC.gov$year, NC.gov$perc.grt10000*100, col = "darkgreen")
points(NC.gov$year, NC.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

























par(mfrow=c(3, 6)) #Establish aesthetic parameters of the figure

plot(NV.lower$year, NV.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "NV, Unitemized")
points(NV.lower$year, NV.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(NV.upper$year, NV.upper$perc.unitemized*100, col = "red")
points(NV.upper$year, NV.upper$perc.unitemized*100, col = "red", pch = 16)
lines(NV.gov$year, NV.gov$perc.unitemized*100, col = "darkgreen")
points(NV.gov$year, NV.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(NV.lower$year, NV.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "NV, <$100")
points(NV.lower$year, NV.lower$perc.less100*100, col = "blue", pch = 16)
lines(NV.upper$year, NV.upper$perc.less100*100, col = "red")
points(NV.upper$year, NV.upper$perc.less100*100, col = "red", pch = 16)
lines(NV.gov$year, NV.gov$perc.less100*100, col = "darkgreen")
points(NV.gov$year, NV.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NV.lower$year, NV.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "NV, $100-$500")
points(NV.lower$year, NV.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(NV.upper$year, NV.upper$perc.btw100500*100, col = "red")
points(NV.upper$year, NV.upper$perc.btw100500*100, col = "red", pch = 16)
lines(NV.gov$year, NV.gov$perc.btw100500*100, col = "darkgreen")
points(NV.gov$year, NV.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NV.lower$year, NV.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "NV, $500-$1,000")
points(NV.lower$year, NV.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(NV.upper$year, NV.upper$perc.btw5001000*100, col = "red")
points(NV.upper$year, NV.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(NV.gov$year, NV.gov$perc.btw5001000*100, col = "darkgreen")
points(NV.gov$year, NV.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NV.lower$year, NV.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "NV, $1,000-$10,000")
points(NV.lower$year, NV.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(NV.upper$year, NV.upper$perc.btw100010000*100, col = "red")
points(NV.upper$year, NV.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(NV.gov$year, NV.gov$perc.btw100010000*100, col = "darkgreen")
points(NV.gov$year, NV.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NV.lower$year, NV.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "NV, >$10,000")
points(NV.lower$year, NV.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(NV.upper$year, NV.upper$perc.grt10000*100, col = "red")
points(NV.upper$year, NV.upper$perc.grt10000*100, col = "red", pch = 16)
lines(NV.gov$year, NV.gov$perc.grt10000*100, col = "darkgreen")
points(NV.gov$year, NV.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






plot(NH.lower$year, NH.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NH, Unitemized")
points(NH.lower$year, NH.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(NH.upper$year, NH.upper$perc.unitemized*100, col = "red")
points(NH.upper$year, NH.upper$perc.unitemized*100, col = "red", pch = 16)
lines(NH.gov$year, NH.gov$perc.unitemized*100, col = "darkgreen")
points(NH.gov$year, NH.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(NH.lower$year, NH.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NH, <$100")
points(NH.lower$year, NH.lower$perc.less100*100, col = "blue", pch = 16)
lines(NH.upper$year, NH.upper$perc.less100*100, col = "red")
points(NH.upper$year, NH.upper$perc.less100*100, col = "red", pch = 16)
lines(NH.gov$year, NH.gov$perc.less100*100, col = "darkgreen")
points(NH.gov$year, NH.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NH.lower$year, NH.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NH, $100-$500")
points(NH.lower$year, NH.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(NH.upper$year, NH.upper$perc.btw100500*100, col = "red")
points(NH.upper$year, NH.upper$perc.btw100500*100, col = "red", pch = 16)
lines(NH.gov$year, NH.gov$perc.btw100500*100, col = "darkgreen")
points(NH.gov$year, NH.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NH.lower$year, NH.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NH, $500-$1,000")
points(NH.lower$year, NH.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(NH.upper$year, NH.upper$perc.btw5001000*100, col = "red")
points(NH.upper$year, NH.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(NH.gov$year, NH.gov$perc.btw5001000*100, col = "darkgreen")
points(NH.gov$year, NH.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NH.lower$year, NH.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NH, $1,000-$10,000")
points(NH.lower$year, NH.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(NH.upper$year, NH.upper$perc.btw100010000*100, col = "red")
points(NH.upper$year, NH.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(NH.gov$year, NH.gov$perc.btw100010000*100, col = "darkgreen")
points(NH.gov$year, NH.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NH.lower$year, NH.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NH, >$10,000")
points(NH.lower$year, NH.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(NH.upper$year, NH.upper$perc.grt10000*100, col = "red")
points(NH.upper$year, NH.upper$perc.grt10000*100, col = "red", pch = 16)
lines(NH.gov$year, NH.gov$perc.grt10000*100, col = "darkgreen")
points(NH.gov$year, NH.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     







plot(NJ.lower$year, NJ.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "NJ, Unitemized")
points(NJ.lower$year, NJ.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(NJ.upper$year, NJ.upper$perc.unitemized*100, col = "red")
points(NJ.upper$year, NJ.upper$perc.unitemized*100, col = "red", pch = 16)
lines(NJ.gov$year, NJ.gov$perc.unitemized*100, col = "darkgreen")
points(NJ.gov$year, NJ.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(NJ.lower$year, NJ.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "NJ, <$100")
points(NJ.lower$year, NJ.lower$perc.less100*100, col = "blue", pch = 16)
lines(NJ.upper$year, NJ.upper$perc.less100*100, col = "red")
points(NJ.upper$year, NJ.upper$perc.less100*100, col = "red", pch = 16)
lines(NJ.gov$year, NJ.gov$perc.less100*100, col = "darkgreen")
points(NJ.gov$year, NJ.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NJ.lower$year, NJ.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "NJ, $100-$500")
points(NJ.lower$year, NJ.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(NJ.upper$year, NJ.upper$perc.btw100500*100, col = "red")
points(NJ.upper$year, NJ.upper$perc.btw100500*100, col = "red", pch = 16)
lines(NJ.gov$year, NJ.gov$perc.btw100500*100, col = "darkgreen")
points(NJ.gov$year, NJ.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NJ.lower$year, NJ.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "NJ, $500-$1,000")
points(NJ.lower$year, NJ.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(NJ.upper$year, NJ.upper$perc.btw5001000*100, col = "red")
points(NJ.upper$year, NJ.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(NJ.gov$year, NJ.gov$perc.btw5001000*100, col = "darkgreen")
points(NJ.gov$year, NJ.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NJ.lower$year, NJ.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "NJ, $1,000-$10,000")
points(NJ.lower$year, NJ.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(NJ.upper$year, NJ.upper$perc.btw100010000*100, col = "red")
points(NJ.upper$year, NJ.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(NJ.gov$year, NJ.gov$perc.btw100010000*100, col = "darkgreen")
points(NJ.gov$year, NJ.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NJ.lower$year, NJ.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "NJ, >$10,000")
points(NJ.lower$year, NJ.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(NJ.upper$year, NJ.upper$perc.grt10000*100, col = "red")
points(NJ.upper$year, NJ.upper$perc.grt10000*100, col = "red", pch = 16)
lines(NJ.gov$year, NJ.gov$perc.grt10000*100, col = "darkgreen")
points(NJ.gov$year, NJ.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

























par(mfrow=c(3, 6)) #Establish aesthetic parameters of the figure

plot(OR.lower$year, OR.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "OR, Unitemized")
points(OR.lower$year, OR.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(OR.upper$year, OR.upper$perc.unitemized*100, col = "red")
points(OR.upper$year, OR.upper$perc.unitemized*100, col = "red", pch = 16)
lines(OR.gov$year, OR.gov$perc.unitemized*100, col = "darkgreen")
points(OR.gov$year, OR.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(OR.lower$year, OR.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "OR, <$100")
points(OR.lower$year, OR.lower$perc.less100*100, col = "blue", pch = 16)
lines(OR.upper$year, OR.upper$perc.less100*100, col = "red")
points(OR.upper$year, OR.upper$perc.less100*100, col = "red", pch = 16)
lines(OR.gov$year, OR.gov$perc.less100*100, col = "darkgreen")
points(OR.gov$year, OR.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(OR.lower$year, OR.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "OR, $100-$500")
points(OR.lower$year, OR.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(OR.upper$year, OR.upper$perc.btw100500*100, col = "red")
points(OR.upper$year, OR.upper$perc.btw100500*100, col = "red", pch = 16)
lines(OR.gov$year, OR.gov$perc.btw100500*100, col = "darkgreen")
points(OR.gov$year, OR.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(OR.lower$year, OR.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "OR, $500-$1,000")
points(OR.lower$year, OR.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(OR.upper$year, OR.upper$perc.btw5001000*100, col = "red")
points(OR.upper$year, OR.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(OR.gov$year, OR.gov$perc.btw5001000*100, col = "darkgreen")
points(OR.gov$year, OR.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(OR.lower$year, OR.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "OR, $1,000-$10,000")
points(OR.lower$year, OR.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(OR.upper$year, OR.upper$perc.btw100010000*100, col = "red")
points(OR.upper$year, OR.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(OR.gov$year, OR.gov$perc.btw100010000*100, col = "darkgreen")
points(OR.gov$year, OR.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(OR.lower$year, OR.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "OR, >$10,000")
points(OR.lower$year, OR.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(OR.upper$year, OR.upper$perc.grt10000*100, col = "red")
points(OR.upper$year, OR.upper$perc.grt10000*100, col = "red", pch = 16)
lines(OR.gov$year, OR.gov$perc.grt10000*100, col = "darkgreen")
points(OR.gov$year, OR.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






plot(PA.lower$year, PA.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "PA, Unitemized")
points(PA.lower$year, PA.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(PA.upper$year, PA.upper$perc.unitemized*100, col = "red")
points(PA.upper$year, PA.upper$perc.unitemized*100, col = "red", pch = 16)
lines(PA.gov$year, PA.gov$perc.unitemized*100, col = "darkgreen")
points(PA.gov$year, PA.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(PA.lower$year, PA.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "PA, <$100")
points(PA.lower$year, PA.lower$perc.less100*100, col = "blue", pch = 16)
lines(PA.upper$year, PA.upper$perc.less100*100, col = "red")
points(PA.upper$year, PA.upper$perc.less100*100, col = "red", pch = 16)
lines(PA.gov$year, PA.gov$perc.less100*100, col = "darkgreen")
points(PA.gov$year, PA.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(PA.lower$year, PA.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "PA, $100-$500")
points(PA.lower$year, PA.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(PA.upper$year, PA.upper$perc.btw100500*100, col = "red")
points(PA.upper$year, PA.upper$perc.btw100500*100, col = "red", pch = 16)
lines(PA.gov$year, PA.gov$perc.btw100500*100, col = "darkgreen")
points(PA.gov$year, PA.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(PA.lower$year, PA.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "PA, $500-$1,000")
points(PA.lower$year, PA.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(PA.upper$year, PA.upper$perc.btw5001000*100, col = "red")
points(PA.upper$year, PA.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(PA.gov$year, PA.gov$perc.btw5001000*100, col = "darkgreen")
points(PA.gov$year, PA.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(PA.lower$year, PA.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "PA, $1,000-$10,000")
points(PA.lower$year, PA.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(PA.upper$year, PA.upper$perc.btw100010000*100, col = "red")
points(PA.upper$year, PA.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(PA.gov$year, PA.gov$perc.btw100010000*100, col = "darkgreen")
points(PA.gov$year, PA.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(PA.lower$year, PA.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "PA, >$10,000")
points(PA.lower$year, PA.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(PA.upper$year, PA.upper$perc.grt10000*100, col = "red")
points(PA.upper$year, PA.upper$perc.grt10000*100, col = "red", pch = 16)
lines(PA.gov$year, PA.gov$perc.grt10000*100, col = "darkgreen")
points(PA.gov$year, PA.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     







plot(RI.lower$year, RI.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "RI, Unitemized")
points(RI.lower$year, RI.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(RI.upper$year, RI.upper$perc.unitemized*100, col = "red")
points(RI.upper$year, RI.upper$perc.unitemized*100, col = "red", pch = 16)
lines(RI.gov$year, RI.gov$perc.unitemized*100, col = "darkgreen")
points(RI.gov$year, RI.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(RI.lower$year, RI.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "RI, <$100")
points(RI.lower$year, RI.lower$perc.less100*100, col = "blue", pch = 16)
lines(RI.upper$year, RI.upper$perc.less100*100, col = "red")
points(RI.upper$year, RI.upper$perc.less100*100, col = "red", pch = 16)
lines(RI.gov$year, RI.gov$perc.less100*100, col = "darkgreen")
points(RI.gov$year, RI.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(RI.lower$year, RI.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "RI, $100-$500")
points(RI.lower$year, RI.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(RI.upper$year, RI.upper$perc.btw100500*100, col = "red")
points(RI.upper$year, RI.upper$perc.btw100500*100, col = "red", pch = 16)
lines(RI.gov$year, RI.gov$perc.btw100500*100, col = "darkgreen")
points(RI.gov$year, RI.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(RI.lower$year, RI.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "RI, $500-$1,000")
points(RI.lower$year, RI.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(RI.upper$year, RI.upper$perc.btw5001000*100, col = "red")
points(RI.upper$year, RI.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(RI.gov$year, RI.gov$perc.btw5001000*100, col = "darkgreen")
points(RI.gov$year, RI.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(RI.lower$year, RI.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "RI, $1,000-$10,000")
points(RI.lower$year, RI.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(RI.upper$year, RI.upper$perc.btw100010000*100, col = "red")
points(RI.upper$year, RI.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(RI.gov$year, RI.gov$perc.btw100010000*100, col = "darkgreen")
points(RI.gov$year, RI.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(RI.lower$year, RI.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "RI, >$10,000")
points(RI.lower$year, RI.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(RI.upper$year, RI.upper$perc.grt10000*100, col = "red")
points(RI.upper$year, RI.upper$perc.grt10000*100, col = "red", pch = 16)
lines(RI.gov$year, RI.gov$perc.grt10000*100, col = "darkgreen")
points(RI.gov$year, RI.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

























par(mfrow=c(3, 6)) #Establish aesthetic parameters of the figure

plot(SC.lower$year, SC.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "SC, Unitemized")
points(SC.lower$year, SC.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(SC.upper$year, SC.upper$perc.unitemized*100, col = "red")
points(SC.upper$year, SC.upper$perc.unitemized*100, col = "red", pch = 16)
lines(SC.gov$year, SC.gov$perc.unitemized*100, col = "darkgreen")
points(SC.gov$year, SC.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(SC.lower$year, SC.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "SC, <$100")
points(SC.lower$year, SC.lower$perc.less100*100, col = "blue", pch = 16)
lines(SC.upper$year, SC.upper$perc.less100*100, col = "red")
points(SC.upper$year, SC.upper$perc.less100*100, col = "red", pch = 16)
lines(SC.gov$year, SC.gov$perc.less100*100, col = "darkgreen")
points(SC.gov$year, SC.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(SC.lower$year, SC.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "SC, $100-$500")
points(SC.lower$year, SC.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(SC.upper$year, SC.upper$perc.btw100500*100, col = "red")
points(SC.upper$year, SC.upper$perc.btw100500*100, col = "red", pch = 16)
lines(SC.gov$year, SC.gov$perc.btw100500*100, col = "darkgreen")
points(SC.gov$year, SC.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(SC.lower$year, SC.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "SC, $500-$1,000")
points(SC.lower$year, SC.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(SC.upper$year, SC.upper$perc.btw5001000*100, col = "red")
points(SC.upper$year, SC.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(SC.gov$year, SC.gov$perc.btw5001000*100, col = "darkgreen")
points(SC.gov$year, SC.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(SC.lower$year, SC.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "SC, $1,000-$10,000")
points(SC.lower$year, SC.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(SC.upper$year, SC.upper$perc.btw100010000*100, col = "red")
points(SC.upper$year, SC.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(SC.gov$year, SC.gov$perc.btw100010000*100, col = "darkgreen")
points(SC.gov$year, SC.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(SC.lower$year, SC.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "SC, >$10,000")
points(SC.lower$year, SC.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(SC.upper$year, SC.upper$perc.grt10000*100, col = "red")
points(SC.upper$year, SC.upper$perc.grt10000*100, col = "red", pch = 16)
lines(SC.gov$year, SC.gov$perc.grt10000*100, col = "darkgreen")
points(SC.gov$year, SC.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






plot(SD.lower$year, SD.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "SD, Unitemized")
points(SD.lower$year, SD.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(SD.upper$year, SD.upper$perc.unitemized*100, col = "red")
points(SD.upper$year, SD.upper$perc.unitemized*100, col = "red", pch = 16)
lines(SD.gov$year, SD.gov$perc.unitemized*100, col = "darkgreen")
points(SD.gov$year, SD.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(SD.lower$year, SD.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "SD, <$100")
points(SD.lower$year, SD.lower$perc.less100*100, col = "blue", pch = 16)
lines(SD.upper$year, SD.upper$perc.less100*100, col = "red")
points(SD.upper$year, SD.upper$perc.less100*100, col = "red", pch = 16)
lines(SD.gov$year, SD.gov$perc.less100*100, col = "darkgreen")
points(SD.gov$year, SD.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(SD.lower$year, SD.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "SD, $100-$500")
points(SD.lower$year, SD.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(SD.upper$year, SD.upper$perc.btw100500*100, col = "red")
points(SD.upper$year, SD.upper$perc.btw100500*100, col = "red", pch = 16)
lines(SD.gov$year, SD.gov$perc.btw100500*100, col = "darkgreen")
points(SD.gov$year, SD.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(SD.lower$year, SD.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "SD, $500-$1,000")
points(SD.lower$year, SD.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(SD.upper$year, SD.upper$perc.btw5001000*100, col = "red")
points(SD.upper$year, SD.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(SD.gov$year, SD.gov$perc.btw5001000*100, col = "darkgreen")
points(SD.gov$year, SD.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(SD.lower$year, SD.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "SD, $1,000-$10,000")
points(SD.lower$year, SD.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(SD.upper$year, SD.upper$perc.btw100010000*100, col = "red")
points(SD.upper$year, SD.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(SD.gov$year, SD.gov$perc.btw100010000*100, col = "darkgreen")
points(SD.gov$year, SD.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(SD.lower$year, SD.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "SD, >$10,000")
points(SD.lower$year, SD.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(SD.upper$year, SD.upper$perc.grt10000*100, col = "red")
points(SD.upper$year, SD.upper$perc.grt10000*100, col = "red", pch = 16)
lines(SD.gov$year, SD.gov$perc.grt10000*100, col = "darkgreen")
points(SD.gov$year, SD.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     







plot(TN.lower$year, TN.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "TN, Unitemized")
points(TN.lower$year, TN.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(TN.upper$year, TN.upper$perc.unitemized*100, col = "red")
points(TN.upper$year, TN.upper$perc.unitemized*100, col = "red", pch = 16)
lines(TN.gov$year, TN.gov$perc.unitemized*100, col = "darkgreen")
points(TN.gov$year, TN.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(TN.lower$year, TN.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "TN, <$100")
points(TN.lower$year, TN.lower$perc.less100*100, col = "blue", pch = 16)
lines(TN.upper$year, TN.upper$perc.less100*100, col = "red")
points(TN.upper$year, TN.upper$perc.less100*100, col = "red", pch = 16)
lines(TN.gov$year, TN.gov$perc.less100*100, col = "darkgreen")
points(TN.gov$year, TN.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(TN.lower$year, TN.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "TN, $100-$500")
points(TN.lower$year, TN.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(TN.upper$year, TN.upper$perc.btw100500*100, col = "red")
points(TN.upper$year, TN.upper$perc.btw100500*100, col = "red", pch = 16)
lines(TN.gov$year, TN.gov$perc.btw100500*100, col = "darkgreen")
points(TN.gov$year, TN.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(TN.lower$year, TN.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "TN, $500-$1,000")
points(TN.lower$year, TN.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(TN.upper$year, TN.upper$perc.btw5001000*100, col = "red")
points(TN.upper$year, TN.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(TN.gov$year, TN.gov$perc.btw5001000*100, col = "darkgreen")
points(TN.gov$year, TN.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(TN.lower$year, TN.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "TN, $1,000-$10,000")
points(TN.lower$year, TN.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(TN.upper$year, TN.upper$perc.btw100010000*100, col = "red")
points(TN.upper$year, TN.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(TN.gov$year, TN.gov$perc.btw100010000*100, col = "darkgreen")
points(TN.gov$year, TN.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(TN.lower$year, TN.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "TN, >$10,000")
points(TN.lower$year, TN.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(TN.upper$year, TN.upper$perc.grt10000*100, col = "red")
points(TN.upper$year, TN.upper$perc.grt10000*100, col = "red", pch = 16)
lines(TN.gov$year, TN.gov$perc.grt10000*100, col = "darkgreen")
points(TN.gov$year, TN.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

























par(mfrow=c(3, 6)) #Establish aesthetic parameters of the figure

plot(TX.lower$year, TX.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "TX, Unitemized")
points(TX.lower$year, TX.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(TX.upper$year, TX.upper$perc.unitemized*100, col = "red")
points(TX.upper$year, TX.upper$perc.unitemized*100, col = "red", pch = 16)
lines(TX.gov$year, TX.gov$perc.unitemized*100, col = "darkgreen")
points(TX.gov$year, TX.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(TX.lower$year, TX.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "TX, <$100")
points(TX.lower$year, TX.lower$perc.less100*100, col = "blue", pch = 16)
lines(TX.upper$year, TX.upper$perc.less100*100, col = "red")
points(TX.upper$year, TX.upper$perc.less100*100, col = "red", pch = 16)
lines(TX.gov$year, TX.gov$perc.less100*100, col = "darkgreen")
points(TX.gov$year, TX.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(TX.lower$year, TX.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "TX, $100-$500")
points(TX.lower$year, TX.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(TX.upper$year, TX.upper$perc.btw100500*100, col = "red")
points(TX.upper$year, TX.upper$perc.btw100500*100, col = "red", pch = 16)
lines(TX.gov$year, TX.gov$perc.btw100500*100, col = "darkgreen")
points(TX.gov$year, TX.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(TX.lower$year, TX.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "TX, $500-$1,000")
points(TX.lower$year, TX.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(TX.upper$year, TX.upper$perc.btw5001000*100, col = "red")
points(TX.upper$year, TX.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(TX.gov$year, TX.gov$perc.btw5001000*100, col = "darkgreen")
points(TX.gov$year, TX.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(TX.lower$year, TX.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "TX, $1,000-$10,000")
points(TX.lower$year, TX.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(TX.upper$year, TX.upper$perc.btw100010000*100, col = "red")
points(TX.upper$year, TX.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(TX.gov$year, TX.gov$perc.btw100010000*100, col = "darkgreen")
points(TX.gov$year, TX.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(TX.lower$year, TX.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "TX, >$10,000")
points(TX.lower$year, TX.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(TX.upper$year, TX.upper$perc.grt10000*100, col = "red")
points(TX.upper$year, TX.upper$perc.grt10000*100, col = "red", pch = 16)
lines(TX.gov$year, TX.gov$perc.grt10000*100, col = "darkgreen")
points(TX.gov$year, TX.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






plot(UT.lower$year, UT.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "UT, Unitemized")
points(UT.lower$year, UT.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(UT.upper$year, UT.upper$perc.unitemized*100, col = "red")
points(UT.upper$year, UT.upper$perc.unitemized*100, col = "red", pch = 16)
lines(UT.gov$year, UT.gov$perc.unitemized*100, col = "darkgreen")
points(UT.gov$year, UT.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(UT.lower$year, UT.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "UT, <$100")
points(UT.lower$year, UT.lower$perc.less100*100, col = "blue", pch = 16)
lines(UT.upper$year, UT.upper$perc.less100*100, col = "red")
points(UT.upper$year, UT.upper$perc.less100*100, col = "red", pch = 16)
lines(UT.gov$year, UT.gov$perc.less100*100, col = "darkgreen")
points(UT.gov$year, UT.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(UT.lower$year, UT.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "UT, $100-$500")
points(UT.lower$year, UT.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(UT.upper$year, UT.upper$perc.btw100500*100, col = "red")
points(UT.upper$year, UT.upper$perc.btw100500*100, col = "red", pch = 16)
lines(UT.gov$year, UT.gov$perc.btw100500*100, col = "darkgreen")
points(UT.gov$year, UT.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(UT.lower$year, UT.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "UT, $500-$1,000")
points(UT.lower$year, UT.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(UT.upper$year, UT.upper$perc.btw5001000*100, col = "red")
points(UT.upper$year, UT.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(UT.gov$year, UT.gov$perc.btw5001000*100, col = "darkgreen")
points(UT.gov$year, UT.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(UT.lower$year, UT.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "UT, $1,000-$10,000")
points(UT.lower$year, UT.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(UT.upper$year, UT.upper$perc.btw100010000*100, col = "red")
points(UT.upper$year, UT.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(UT.gov$year, UT.gov$perc.btw100010000*100, col = "darkgreen")
points(UT.gov$year, UT.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(UT.lower$year, UT.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "UT, >$10,000")
points(UT.lower$year, UT.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(UT.upper$year, UT.upper$perc.grt10000*100, col = "red")
points(UT.upper$year, UT.upper$perc.grt10000*100, col = "red", pch = 16)
lines(UT.gov$year, UT.gov$perc.grt10000*100, col = "darkgreen")
points(UT.gov$year, UT.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     







plot(VT.lower$year, VT.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "VT, Unitemized")
points(VT.lower$year, VT.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(VT.upper$year, VT.upper$perc.unitemized*100, col = "red")
points(VT.upper$year, VT.upper$perc.unitemized*100, col = "red", pch = 16)
lines(VT.gov$year, VT.gov$perc.unitemized*100, col = "darkgreen")
points(VT.gov$year, VT.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(VT.lower$year, VT.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "VT, <$100")
points(VT.lower$year, VT.lower$perc.less100*100, col = "blue", pch = 16)
lines(VT.upper$year, VT.upper$perc.less100*100, col = "red")
points(VT.upper$year, VT.upper$perc.less100*100, col = "red", pch = 16)
lines(VT.gov$year, VT.gov$perc.less100*100, col = "darkgreen")
points(VT.gov$year, VT.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(VT.lower$year, VT.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "VT, $100-$500")
points(VT.lower$year, VT.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(VT.upper$year, VT.upper$perc.btw100500*100, col = "red")
points(VT.upper$year, VT.upper$perc.btw100500*100, col = "red", pch = 16)
lines(VT.gov$year, VT.gov$perc.btw100500*100, col = "darkgreen")
points(VT.gov$year, VT.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(VT.lower$year, VT.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "VT, $500-$1,000")
points(VT.lower$year, VT.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(VT.upper$year, VT.upper$perc.btw5001000*100, col = "red")
points(VT.upper$year, VT.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(VT.gov$year, VT.gov$perc.btw5001000*100, col = "darkgreen")
points(VT.gov$year, VT.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(VT.lower$year, VT.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "VT, $1,000-$10,000")
points(VT.lower$year, VT.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(VT.upper$year, VT.upper$perc.btw100010000*100, col = "red")
points(VT.upper$year, VT.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(VT.gov$year, VT.gov$perc.btw100010000*100, col = "darkgreen")
points(VT.gov$year, VT.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
lines(VT.gov$year, VT.gov$perc.btw100010000*100, col = "darkgreen")
points(VT.gov$year, VT.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     


plot(VT.lower$year, VT.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "VT, $1,000-$10,000")
points(VT.lower$year, VT.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(VT.upper$year, VT.upper$perc.grt10000*100, col = "red")
points(VT.upper$year, VT.upper$perc.grt10000*100, col = "red", pch = 16)
lines(VT.gov$year, VT.gov$perc.grt10000*100, col = "darkgreen")
points(VT.gov$year, VT.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
lines(VT.gov$year, VT.gov$perc.grt10000*100, col = "darkgreen")
points(VT.gov$year, VT.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






















par(mfrow=c(3, 6)) #Establish aesthetic parameters of the figure

plot(VA.lower$year, VA.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "VA, Unitemized")
points(VA.lower$year, VA.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(VA.upper$year, VA.upper$perc.unitemized*100, col = "red")
points(VA.upper$year, VA.upper$perc.unitemized*100, col = "red", pch = 16)
lines(VA.gov$year, VA.gov$perc.unitemized*100, col = "darkgreen")
points(VA.gov$year, VA.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(VA.lower$year, VA.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "VA, <$100")
points(VA.lower$year, VA.lower$perc.less100*100, col = "blue", pch = 16)
lines(VA.upper$year, VA.upper$perc.less100*100, col = "red")
points(VA.upper$year, VA.upper$perc.less100*100, col = "red", pch = 16)
lines(VA.gov$year, VA.gov$perc.less100*100, col = "darkgreen")
points(VA.gov$year, VA.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(VA.lower$year, VA.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "VA, $100-$500")
points(VA.lower$year, VA.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(VA.upper$year, VA.upper$perc.btw100500*100, col = "red")
points(VA.upper$year, VA.upper$perc.btw100500*100, col = "red", pch = 16)
lines(VA.gov$year, VA.gov$perc.btw100500*100, col = "darkgreen")
points(VA.gov$year, VA.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(VA.lower$year, VA.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "VA, $500-$1,000")
points(VA.lower$year, VA.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(VA.upper$year, VA.upper$perc.btw5001000*100, col = "red")
points(VA.upper$year, VA.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(VA.gov$year, VA.gov$perc.btw5001000*100, col = "darkgreen")
points(VA.gov$year, VA.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(VA.lower$year, VA.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "VA, $1,000-$10,000")
points(VA.lower$year, VA.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(VA.upper$year, VA.upper$perc.btw100010000*100, col = "red")
points(VA.upper$year, VA.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(VA.gov$year, VA.gov$perc.btw100010000*100, col = "darkgreen")
points(VA.gov$year, VA.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(VA.lower$year, VA.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "VA, >$10,000")
points(VA.lower$year, VA.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(VA.upper$year, VA.upper$perc.grt10000*100, col = "red")
points(VA.upper$year, VA.upper$perc.grt10000*100, col = "red", pch = 16)
lines(VA.gov$year, VA.gov$perc.grt10000*100, col = "darkgreen")
points(VA.gov$year, VA.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






plot(WA.lower$year, WA.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "WA, Unitemized")
points(WA.lower$year, WA.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(WA.upper$year, WA.upper$perc.unitemized*100, col = "red")
points(WA.upper$year, WA.upper$perc.unitemized*100, col = "red", pch = 16)
lines(WA.gov$year, WA.gov$perc.unitemized*100, col = "darkgreen")
points(WA.gov$year, WA.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(WA.lower$year, WA.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "WA, <$100")
points(WA.lower$year, WA.lower$perc.less100*100, col = "blue", pch = 16)
lines(WA.upper$year, WA.upper$perc.less100*100, col = "red")
points(WA.upper$year, WA.upper$perc.less100*100, col = "red", pch = 16)
lines(WA.gov$year, WA.gov$perc.less100*100, col = "darkgreen")
points(WA.gov$year, WA.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(WA.lower$year, WA.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "WA, $100-$500")
points(WA.lower$year, WA.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(WA.upper$year, WA.upper$perc.btw100500*100, col = "red")
points(WA.upper$year, WA.upper$perc.btw100500*100, col = "red", pch = 16)
lines(WA.gov$year, WA.gov$perc.btw100500*100, col = "darkgreen")
points(WA.gov$year, WA.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(WA.lower$year, WA.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "WA, $500-$1,000")
points(WA.lower$year, WA.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(WA.upper$year, WA.upper$perc.btw5001000*100, col = "red")
points(WA.upper$year, WA.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(WA.gov$year, WA.gov$perc.btw5001000*100, col = "darkgreen")
points(WA.gov$year, WA.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(WA.lower$year, WA.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "WA, $1,000-$10,000")
points(WA.lower$year, WA.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(WA.upper$year, WA.upper$perc.btw100010000*100, col = "red")
points(WA.upper$year, WA.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(WA.gov$year, WA.gov$perc.btw100010000*100, col = "darkgreen")
points(WA.gov$year, WA.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(WA.lower$year, WA.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "WA, >$10,000")
points(WA.lower$year, WA.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(WA.upper$year, WA.upper$perc.grt10000*100, col = "red")
points(WA.upper$year, WA.upper$perc.grt10000*100, col = "red", pch = 16)
lines(WA.gov$year, WA.gov$perc.grt10000*100, col = "darkgreen")
points(WA.gov$year, WA.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     







plot(WV.lower$year, WV.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "WV, Unitemized")
points(WV.lower$year, WV.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(WV.upper$year, WV.upper$perc.unitemized*100, col = "red")
points(WV.upper$year, WV.upper$perc.unitemized*100, col = "red", pch = 16)
lines(WV.gov$year, WV.gov$perc.unitemized*100, col = "darkgreen")
points(WV.gov$year, WV.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(WV.lower$year, WV.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "WV, <$100")
points(WV.lower$year, WV.lower$perc.less100*100, col = "blue", pch = 16)
lines(WV.upper$year, WV.upper$perc.less100*100, col = "red")
points(WV.upper$year, WV.upper$perc.less100*100, col = "red", pch = 16)
lines(WV.gov$year, WV.gov$perc.less100*100, col = "darkgreen")
points(WV.gov$year, WV.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(WV.lower$year, WV.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "WV, $100-$500")
points(WV.lower$year, WV.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(WV.upper$year, WV.upper$perc.btw100500*100, col = "red")
points(WV.upper$year, WV.upper$perc.btw100500*100, col = "red", pch = 16)
lines(WV.gov$year, WV.gov$perc.btw100500*100, col = "darkgreen")
points(WV.gov$year, WV.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(WV.lower$year, WV.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "WV, $500-$1,000")
points(WV.lower$year, WV.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(WV.upper$year, WV.upper$perc.btw5001000*100, col = "red")
points(WV.upper$year, WV.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(WV.gov$year, WV.gov$perc.btw5001000*100, col = "darkgreen")
points(WV.gov$year, WV.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(WV.lower$year, WV.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "WV, $1,000-$10,000")
points(WV.lower$year, WV.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(WV.upper$year, WV.upper$perc.btw100010000*100, col = "red")
points(WV.upper$year, WV.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(WV.gov$year, WV.gov$perc.btw100010000*100, col = "darkgreen")
points(WV.gov$year, WV.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(WV.lower$year, WV.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "WV, >$10,000")
points(WV.lower$year, WV.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(WV.upper$year, WV.upper$perc.grt10000*100, col = "red")
points(WV.upper$year, WV.upper$perc.grt10000*100, col = "red", pch = 16)
lines(WV.gov$year, WV.gov$perc.grt10000*100, col = "darkgreen")
points(WV.gov$year, WV.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
























par(mfrow=c(3, 6)) #Establish aesthetic parameters of the figure

plot(WI.lower$year, WI.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "WI, Unitemized")
points(WI.lower$year, WI.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(WI.upper$year, WI.upper$perc.unitemized*100, col = "red")
points(WI.upper$year, WI.upper$perc.unitemized*100, col = "red", pch = 16)
lines(WI.gov$year, WI.gov$perc.unitemized*100, col = "darkgreen")
points(WI.gov$year, WI.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(WI.lower$year, WI.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "WI, <$100")
points(WI.lower$year, WI.lower$perc.less100*100, col = "blue", pch = 16)
lines(WI.upper$year, WI.upper$perc.less100*100, col = "red")
points(WI.upper$year, WI.upper$perc.less100*100, col = "red", pch = 16)
lines(WI.gov$year, WI.gov$perc.less100*100, col = "darkgreen")
points(WI.gov$year, WI.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(WI.lower$year, WI.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "WI, $100-$500")
points(WI.lower$year, WI.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(WI.upper$year, WI.upper$perc.btw100500*100, col = "red")
points(WI.upper$year, WI.upper$perc.btw100500*100, col = "red", pch = 16)
lines(WI.gov$year, WI.gov$perc.btw100500*100, col = "darkgreen")
points(WI.gov$year, WI.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(WI.lower$year, WI.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "WI, $500-$1,000")
points(WI.lower$year, WI.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(WI.upper$year, WI.upper$perc.btw5001000*100, col = "red")
points(WI.upper$year, WI.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(WI.gov$year, WI.gov$perc.btw5001000*100, col = "darkgreen")
points(WI.gov$year, WI.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(WI.lower$year, WI.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "WI, $1,000-$10,000")
points(WI.lower$year, WI.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(WI.upper$year, WI.upper$perc.btw100010000*100, col = "red")
points(WI.upper$year, WI.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(WI.gov$year, WI.gov$perc.btw100010000*100, col = "darkgreen")
points(WI.gov$year, WI.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(WI.lower$year, WI.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "WI, >$10,000")
points(WI.lower$year, WI.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(WI.upper$year, WI.upper$perc.grt10000*100, col = "red")
points(WI.upper$year, WI.upper$perc.grt10000*100, col = "red", pch = 16)
lines(WI.gov$year, WI.gov$perc.grt10000*100, col = "darkgreen")
points(WI.gov$year, WI.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






plot(WY.lower$year, WY.lower$perc.unitemized*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "WY, Unitemized")
points(WY.lower$year, WY.lower$perc.unitemized*100, col = "blue", pch = 16)
lines(WY.upper$year, WY.upper$perc.unitemized*100, col = "red")
points(WY.upper$year, WY.upper$perc.unitemized*100, col = "red", pch = 16)
lines(WY.gov$year, WY.gov$perc.unitemized*100, col = "darkgreen")
points(WY.gov$year, WY.gov$perc.unitemized*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(WY.lower$year, WY.lower$perc.less100*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "WY, <$100")
points(WY.lower$year, WY.lower$perc.less100*100, col = "blue", pch = 16)
lines(WY.upper$year, WY.upper$perc.less100*100, col = "red")
points(WY.upper$year, WY.upper$perc.less100*100, col = "red", pch = 16)
lines(WY.gov$year, WY.gov$perc.less100*100, col = "darkgreen")
points(WY.gov$year, WY.gov$perc.less100*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(WY.lower$year, WY.lower$perc.btw100500*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "WY, $100-$500")
points(WY.lower$year, WY.lower$perc.btw100500*100, col = "blue", pch = 16)
lines(WY.upper$year, WY.upper$perc.btw100500*100, col = "red")
points(WY.upper$year, WY.upper$perc.btw100500*100, col = "red", pch = 16)
lines(WY.gov$year, WY.gov$perc.btw100500*100, col = "darkgreen")
points(WY.gov$year, WY.gov$perc.btw100500*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(WY.lower$year, WY.lower$perc.btw5001000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "WY, $500-$1,000")
points(WY.lower$year, WY.lower$perc.btw5001000*100, col = "blue", pch = 16)
lines(WY.upper$year, WY.upper$perc.btw5001000*100, col = "red")
points(WY.upper$year, WY.upper$perc.btw5001000*100, col = "red", pch = 16)
lines(WY.gov$year, WY.gov$perc.btw5001000*100, col = "darkgreen")
points(WY.gov$year, WY.gov$perc.btw5001000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(WY.lower$year, WY.lower$perc.btw100010000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "WY, $1,000-$10,000")
points(WY.lower$year, WY.lower$perc.btw100010000*100, col = "blue", pch = 16)
lines(WY.upper$year, WY.upper$perc.btw100010000*100, col = "red")
points(WY.upper$year, WY.upper$perc.btw100010000*100, col = "red", pch = 16)
lines(WY.gov$year, WY.gov$perc.btw100010000*100, col = "darkgreen")
points(WY.gov$year, WY.gov$perc.btw100010000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(WY.lower$year, WY.lower$perc.grt10000*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "WY, >$10,000")
points(WY.lower$year, WY.lower$perc.grt10000*100, col = "blue", pch = 16)
lines(WY.upper$year, WY.upper$perc.grt10000*100, col = "red")
points(WY.upper$year, WY.upper$perc.grt10000*100, col = "red", pch = 16)
lines(WY.gov$year, WY.gov$perc.grt10000*100, col = "darkgreen")
points(WY.gov$year, WY.gov$perc.grt10000*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     



# CREATE AGGREGATED DATA GRAPHS FOR NON-INDIVIDUAL CONTRIBUTIONS -----------------------------------------------------------

par(mfrow=c(3, 6)) #Establish aesthetic parameters of the figure

plot(AK.lower$year, AK.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "AK, Business")
points(AK.lower$year, AK.lower$perc.business*100, col = "blue", pch = 16)
lines(AK.upper$year, AK.upper$perc.business*100, col = "red")
points(AK.upper$year, AK.upper$perc.business*100, col = "red", pch = 16)
lines(AK.gov$year, AK.gov$perc.business*100, col = "darkgreen")
points(AK.gov$year, AK.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(AK.lower$year, AK.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "AK, Political")
points(AK.lower$year, AK.lower$perc.political*100, col = "blue", pch = 16)
lines(AK.upper$year, AK.upper$perc.political*100, col = "red")
points(AK.upper$year, AK.upper$perc.political*100, col = "red", pch = 16)
lines(AK.gov$year, AK.gov$perc.political*100, col = "darkgreen")
points(AK.gov$year, AK.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(AK.lower$year, AK.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "AK, Union")
points(AK.lower$year, AK.lower$perc.union*100, col = "blue", pch = 16)
lines(AK.upper$year, AK.upper$perc.union*100, col = "red")
points(AK.upper$year, AK.upper$perc.union*100, col = "red", pch = 16)
lines(AK.gov$year, AK.gov$perc.union*100, col = "darkgreen")
points(AK.gov$year, AK.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(AK.lower$year, AK.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "AK, Advocacy")
points(AK.lower$year, AK.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(AK.upper$year, AK.upper$perc.advocacy*100, col = "red")
points(AK.upper$year, AK.upper$perc.advocacy*100, col = "red", pch = 16)
lines(AK.gov$year, AK.gov$perc.advocacy*100, col = "darkgreen")
points(AK.gov$year, AK.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(AK.lower$year, AK.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "AK, Public")
points(AK.lower$year, AK.lower$perc.public*100, col = "blue", pch = 16)
lines(AK.upper$year, AK.upper$perc.public*100, col = "red")
points(AK.upper$year, AK.upper$perc.public*100, col = "red", pch = 16)
lines(AK.gov$year, AK.gov$perc.public*100, col = "darkgreen")
points(AK.gov$year, AK.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(AK.lower$year, AK.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "AK, Misc")
points(AK.lower$year, AK.lower$perc.misc*100, col = "blue", pch = 16)
lines(AK.upper$year, AK.upper$perc.misc*100, col = "red")
points(AK.upper$year, AK.upper$perc.misc*100, col = "red", pch = 16)
lines(AK.gov$year, AK.gov$perc.misc*100, col = "darkgreen")
points(AK.gov$year, AK.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     




plot(AL.lower$year, AL.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 80), xlab = "Year", ylab = "Percent", main = "AL, Business")
points(AL.lower$year, AL.lower$perc.business*100, col = "blue", pch = 16)
lines(AL.upper$year, AL.upper$perc.business*100, col = "red")
points(AL.upper$year, AL.upper$perc.business*100, col = "red", pch = 16)
lines(AL.gov$year, AL.gov$perc.business*100, col = "darkgreen")
points(AL.gov$year, AL.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(AL.lower$year, AL.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 80), xlab = "Year", ylab = "Percent", main = "AL, Political")
points(AL.lower$year, AL.lower$perc.political*100, col = "blue", pch = 16)
lines(AL.upper$year, AL.upper$perc.political*100, col = "red")
points(AL.upper$year, AL.upper$perc.political*100, col = "red", pch = 16)
lines(AL.gov$year, AL.gov$perc.political*100, col = "darkgreen")
points(AL.gov$year, AL.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(AL.lower$year, AL.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 80), xlab = "Year", ylab = "Percent", main = "AL, Union")
points(AL.lower$year, AL.lower$perc.union*100, col = "blue", pch = 16)
lines(AL.upper$year, AL.upper$perc.union*100, col = "red")
points(AL.upper$year, AL.upper$perc.union*100, col = "red", pch = 16)
lines(AL.gov$year, AL.gov$perc.union*100, col = "darkgreen")
points(AL.gov$year, AL.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(AL.lower$year, AL.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 80), xlab = "Year", ylab = "Percent", main = "AL, Advocacy")
points(AL.lower$year, AL.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(AL.upper$year, AL.upper$perc.advocacy*100, col = "red")
points(AL.upper$year, AL.upper$perc.advocacy*100, col = "red", pch = 16)
lines(AL.gov$year, AL.gov$perc.advocacy*100, col = "darkgreen")
points(AL.gov$year, AL.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(AL.lower$year, AL.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 80), xlab = "Year", ylab = "Percent", main = "AL, Public")
points(AL.lower$year, AL.lower$perc.public*100, col = "blue", pch = 16)
lines(AL.upper$year, AL.upper$perc.public*100, col = "red")
points(AL.upper$year, AL.upper$perc.public*100, col = "red", pch = 16)
lines(AL.gov$year, AL.gov$perc.public*100, col = "darkgreen")
points(AL.gov$year, AL.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(AL.lower$year, AL.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 80), xlab = "Year", ylab = "Percent", main = "AL, Misc")
points(AL.lower$year, AL.lower$perc.misc*100, col = "blue", pch = 16)
lines(AL.upper$year, AL.upper$perc.misc*100, col = "red")
points(AL.upper$year, AL.upper$perc.misc*100, col = "red", pch = 16)
lines(AL.gov$year, AL.gov$perc.misc*100, col = "darkgreen")
points(AL.gov$year, AL.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     





plot(AZ.lower$year, AZ.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 100), xlab = "Year", ylab = "Percent", main = "AZ, Business")
points(AZ.lower$year, AZ.lower$perc.business*100, col = "blue", pch = 16)
lines(AZ.upper$year, AZ.upper$perc.business*100, col = "red")
points(AZ.upper$year, AZ.upper$perc.business*100, col = "red", pch = 16)
lines(AZ.gov$year, AZ.gov$perc.business*100, col = "darkgreen")
points(AZ.gov$year, AZ.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(AZ.lower$year, AZ.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 100), xlab = "Year", ylab = "Percent", main = "AZ, Political")
points(AZ.lower$year, AZ.lower$perc.political*100, col = "blue", pch = 16)
lines(AZ.upper$year, AZ.upper$perc.political*100, col = "red")
points(AZ.upper$year, AZ.upper$perc.political*100, col = "red", pch = 16)
lines(AZ.gov$year, AZ.gov$perc.political*100, col = "darkgreen")
points(AZ.gov$year, AZ.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(AZ.lower$year, AZ.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 100), xlab = "Year", ylab = "Percent", main = "AZ, Union")
points(AZ.lower$year, AZ.lower$perc.union*100, col = "blue", pch = 16)
lines(AZ.upper$year, AZ.upper$perc.union*100, col = "red")
points(AZ.upper$year, AZ.upper$perc.union*100, col = "red", pch = 16)
lines(AZ.gov$year, AZ.gov$perc.union*100, col = "darkgreen")
points(AZ.gov$year, AZ.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(AZ.lower$year, AZ.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 100), xlab = "Year", ylab = "Percent", main = "AZ, Advocacy")
points(AZ.lower$year, AZ.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(AZ.upper$year, AZ.upper$perc.advocacy*100, col = "red")
points(AZ.upper$year, AZ.upper$perc.advocacy*100, col = "red", pch = 16)
lines(AZ.gov$year, AZ.gov$perc.advocacy*100, col = "darkgreen")
points(AZ.gov$year, AZ.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(AZ.lower$year, AZ.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 100), xlab = "Year", ylab = "Percent", main = "AZ, Public")
points(AZ.lower$year, AZ.lower$perc.public*100, col = "blue", pch = 16)
lines(AZ.upper$year, AZ.upper$perc.public*100, col = "red")
points(AZ.upper$year, AZ.upper$perc.public*100, col = "red", pch = 16)
lines(AZ.gov$year, AZ.gov$perc.public*100, col = "darkgreen")
points(AZ.gov$year, AZ.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(AZ.lower$year, AZ.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 100), xlab = "Year", ylab = "Percent", main = "AZ, Misc")
points(AZ.lower$year, AZ.lower$perc.misc*100, col = "blue", pch = 16)
lines(AZ.upper$year, AZ.upper$perc.misc*100, col = "red")
points(AZ.upper$year, AZ.upper$perc.misc*100, col = "red", pch = 16)
lines(AZ.gov$year, AZ.gov$perc.misc*100, col = "darkgreen")
points(AZ.gov$year, AZ.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     





















par(mfrow=c(3, 6)) #Establish aesthetic parameters of the figure

plot(AR.lower$year, AR.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "AR, Business")
points(AR.lower$year, AR.lower$perc.business*100, col = "blue", pch = 16)
lines(AR.upper$year, AR.upper$perc.business*100, col = "red")
points(AR.upper$year, AR.upper$perc.business*100, col = "red", pch = 16)
lines(AR.gov$year, AR.gov$perc.business*100, col = "darkgreen")
points(AR.gov$year, AR.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(AR.lower$year, AR.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "AR, Political")
points(AR.lower$year, AR.lower$perc.political*100, col = "blue", pch = 16)
lines(AR.upper$year, AR.upper$perc.political*100, col = "red")
points(AR.upper$year, AR.upper$perc.political*100, col = "red", pch = 16)
lines(AR.gov$year, AR.gov$perc.political*100, col = "darkgreen")
points(AR.gov$year, AR.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(AR.lower$year, AR.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "AR, Union")
points(AR.lower$year, AR.lower$perc.union*100, col = "blue", pch = 16)
lines(AR.upper$year, AR.upper$perc.union*100, col = "red")
points(AR.upper$year, AR.upper$perc.union*100, col = "red", pch = 16)
lines(AR.gov$year, AR.gov$perc.union*100, col = "darkgreen")
points(AR.gov$year, AR.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(AR.lower$year, AR.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "AR, Advocacy")
points(AR.lower$year, AR.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(AR.upper$year, AR.upper$perc.advocacy*100, col = "red")
points(AR.upper$year, AR.upper$perc.advocacy*100, col = "red", pch = 16)
lines(AR.gov$year, AR.gov$perc.advocacy*100, col = "darkgreen")
points(AR.gov$year, AR.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(AR.lower$year, AR.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "AR, Public")
points(AR.lower$year, AR.lower$perc.public*100, col = "blue", pch = 16)
lines(AR.upper$year, AR.upper$perc.public*100, col = "red")
points(AR.upper$year, AR.upper$perc.public*100, col = "red", pch = 16)
lines(AR.gov$year, AR.gov$perc.public*100, col = "darkgreen")
points(AR.gov$year, AR.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(AR.lower$year, AR.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "AR, Misc")
points(AR.lower$year, AR.lower$perc.misc*100, col = "blue", pch = 16)
lines(AR.upper$year, AR.upper$perc.misc*100, col = "red")
points(AR.upper$year, AR.upper$perc.misc*100, col = "red", pch = 16)
lines(AR.gov$year, AR.gov$perc.misc*100, col = "darkgreen")
points(AR.gov$year, AR.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






plot(CA.lower$year, CA.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "CA, Business")
points(CA.lower$year, CA.lower$perc.business*100, col = "blue", pch = 16)
lines(CA.upper$year, CA.upper$perc.business*100, col = "red")
points(CA.upper$year, CA.upper$perc.business*100, col = "red", pch = 16)
lines(CA.gov$year, CA.gov$perc.business*100, col = "darkgreen")
points(CA.gov$year, CA.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(CA.lower$year, CA.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "CA, Political")
points(CA.lower$year, CA.lower$perc.political*100, col = "blue", pch = 16)
lines(CA.upper$year, CA.upper$perc.political*100, col = "red")
points(CA.upper$year, CA.upper$perc.political*100, col = "red", pch = 16)
lines(CA.gov$year, CA.gov$perc.political*100, col = "darkgreen")
points(CA.gov$year, CA.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(CA.lower$year, CA.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "CA, Union")
points(CA.lower$year, CA.lower$perc.union*100, col = "blue", pch = 16)
lines(CA.upper$year, CA.upper$perc.union*100, col = "red")
points(CA.upper$year, CA.upper$perc.union*100, col = "red", pch = 16)
lines(CA.gov$year, CA.gov$perc.union*100, col = "darkgreen")
points(CA.gov$year, CA.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(CA.lower$year, CA.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "CA, Advocacy")
points(CA.lower$year, CA.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(CA.upper$year, CA.upper$perc.advocacy*100, col = "red")
points(CA.upper$year, CA.upper$perc.advocacy*100, col = "red", pch = 16)
lines(CA.gov$year, CA.gov$perc.advocacy*100, col = "darkgreen")
points(CA.gov$year, CA.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(CA.lower$year, CA.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "CA, Public")
points(CA.lower$year, CA.lower$perc.public*100, col = "blue", pch = 16)
lines(CA.upper$year, CA.upper$perc.public*100, col = "red")
points(CA.upper$year, CA.upper$perc.public*100, col = "red", pch = 16)
lines(CA.gov$year, CA.gov$perc.public*100, col = "darkgreen")
points(CA.gov$year, CA.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(CA.lower$year, CA.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "CA, Misc")
points(CA.lower$year, CA.lower$perc.misc*100, col = "blue", pch = 16)
lines(CA.upper$year, CA.upper$perc.misc*100, col = "red")
points(CA.upper$year, CA.upper$perc.misc*100, col = "red", pch = 16)
lines(CA.gov$year, CA.gov$perc.misc*100, col = "darkgreen")
points(CA.gov$year, CA.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     







plot(CO.lower$year, CO.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "CO, Business")
points(CO.lower$year, CO.lower$perc.business*100, col = "blue", pch = 16)
lines(CO.upper$year, CO.upper$perc.business*100, col = "red")
points(CO.upper$year, CO.upper$perc.business*100, col = "red", pch = 16)
lines(CO.gov$year, CO.gov$perc.business*100, col = "darkgreen")
points(CO.gov$year, CO.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(CO.lower$year, CO.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "CO, Political")
points(CO.lower$year, CO.lower$perc.political*100, col = "blue", pch = 16)
lines(CO.upper$year, CO.upper$perc.political*100, col = "red")
points(CO.upper$year, CO.upper$perc.political*100, col = "red", pch = 16)
lines(CO.gov$year, CO.gov$perc.political*100, col = "darkgreen")
points(CO.gov$year, CO.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(CO.lower$year, CO.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "CO, Union")
points(CO.lower$year, CO.lower$perc.union*100, col = "blue", pch = 16)
lines(CO.upper$year, CO.upper$perc.union*100, col = "red")
points(CO.upper$year, CO.upper$perc.union*100, col = "red", pch = 16)
lines(CO.gov$year, CO.gov$perc.union*100, col = "darkgreen")
points(CO.gov$year, CO.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(CO.lower$year, CO.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "CO, Advocacy")
points(CO.lower$year, CO.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(CO.upper$year, CO.upper$perc.advocacy*100, col = "red")
points(CO.upper$year, CO.upper$perc.advocacy*100, col = "red", pch = 16)
lines(CO.gov$year, CO.gov$perc.advocacy*100, col = "darkgreen")
points(CO.gov$year, CO.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(CO.lower$year, CO.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "CO, Public")
points(CO.lower$year, CO.lower$perc.public*100, col = "blue", pch = 16)
lines(CO.upper$year, CO.upper$perc.public*100, col = "red")
points(CO.upper$year, CO.upper$perc.public*100, col = "red", pch = 16)
lines(CO.gov$year, CO.gov$perc.public*100, col = "darkgreen")
points(CO.gov$year, CO.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(CO.lower$year, CO.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "CO, Misc")
points(CO.lower$year, CO.lower$perc.misc*100, col = "blue", pch = 16)
lines(CO.upper$year, CO.upper$perc.misc*100, col = "red")
points(CO.upper$year, CO.upper$perc.misc*100, col = "red", pch = 16)
lines(CO.gov$year, CO.gov$perc.misc*100, col = "darkgreen")
points(CO.gov$year, CO.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     





















par(mfrow=c(3, 6)) #Establish aesthetic parameters of the figure

plot(CT.lower$year, CT.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 100), xlab = "Year", ylab = "Percent", main = "CT, Business")
points(CT.lower$year, CT.lower$perc.business*100, col = "blue", pch = 16)
lines(CT.upper$year, CT.upper$perc.business*100, col = "red")
points(CT.upper$year, CT.upper$perc.business*100, col = "red", pch = 16)
lines(CT.gov$year, CT.gov$perc.business*100, col = "darkgreen")
points(CT.gov$year, CT.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(CT.lower$year, CT.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 100), xlab = "Year", ylab = "Percent", main = "CT, Political")
points(CT.lower$year, CT.lower$perc.political*100, col = "blue", pch = 16)
lines(CT.upper$year, CT.upper$perc.political*100, col = "red")
points(CT.upper$year, CT.upper$perc.political*100, col = "red", pch = 16)
lines(CT.gov$year, CT.gov$perc.political*100, col = "darkgreen")
points(CT.gov$year, CT.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(CT.lower$year, CT.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 100), xlab = "Year", ylab = "Percent", main = "CT, Union")
points(CT.lower$year, CT.lower$perc.union*100, col = "blue", pch = 16)
lines(CT.upper$year, CT.upper$perc.union*100, col = "red")
points(CT.upper$year, CT.upper$perc.union*100, col = "red", pch = 16)
lines(CT.gov$year, CT.gov$perc.union*100, col = "darkgreen")
points(CT.gov$year, CT.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(CT.lower$year, CT.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 100), xlab = "Year", ylab = "Percent", main = "CT, Advocacy")
points(CT.lower$year, CT.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(CT.upper$year, CT.upper$perc.advocacy*100, col = "red")
points(CT.upper$year, CT.upper$perc.advocacy*100, col = "red", pch = 16)
lines(CT.gov$year, CT.gov$perc.advocacy*100, col = "darkgreen")
points(CT.gov$year, CT.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(CT.lower$year, CT.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 100), xlab = "Year", ylab = "Percent", main = "CT, Public")
points(CT.lower$year, CT.lower$perc.public*100, col = "blue", pch = 16)
lines(CT.upper$year, CT.upper$perc.public*100, col = "red")
points(CT.upper$year, CT.upper$perc.public*100, col = "red", pch = 16)
lines(CT.gov$year, CT.gov$perc.public*100, col = "darkgreen")
points(CT.gov$year, CT.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(CT.lower$year, CT.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 100), xlab = "Year", ylab = "Percent", main = "CT, Misc")
points(CT.lower$year, CT.lower$perc.misc*100, col = "blue", pch = 16)
lines(CT.upper$year, CT.upper$perc.misc*100, col = "red")
points(CT.upper$year, CT.upper$perc.misc*100, col = "red", pch = 16)
lines(CT.gov$year, CT.gov$perc.misc*100, col = "darkgreen")
points(CT.gov$year, CT.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






plot(DE.lower$year, DE.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "DE, Business")
points(DE.lower$year, DE.lower$perc.business*100, col = "blue", pch = 16)
lines(DE.upper$year, DE.upper$perc.business*100, col = "red")
points(DE.upper$year, DE.upper$perc.business*100, col = "red", pch = 16)
lines(DE.gov$year, DE.gov$perc.business*100, col = "darkgreen")
points(DE.gov$year, DE.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(DE.lower$year, DE.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "DE, Political")
points(DE.lower$year, DE.lower$perc.political*100, col = "blue", pch = 16)
lines(DE.upper$year, DE.upper$perc.political*100, col = "red")
points(DE.upper$year, DE.upper$perc.political*100, col = "red", pch = 16)
lines(DE.gov$year, DE.gov$perc.political*100, col = "darkgreen")
points(DE.gov$year, DE.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(DE.lower$year, DE.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "DE, Union")
points(DE.lower$year, DE.lower$perc.union*100, col = "blue", pch = 16)
lines(DE.upper$year, DE.upper$perc.union*100, col = "red")
points(DE.upper$year, DE.upper$perc.union*100, col = "red", pch = 16)
lines(DE.gov$year, DE.gov$perc.union*100, col = "darkgreen")
points(DE.gov$year, DE.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(DE.lower$year, DE.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "DE, Advocacy")
points(DE.lower$year, DE.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(DE.upper$year, DE.upper$perc.advocacy*100, col = "red")
points(DE.upper$year, DE.upper$perc.advocacy*100, col = "red", pch = 16)
lines(DE.gov$year, DE.gov$perc.advocacy*100, col = "darkgreen")
points(DE.gov$year, DE.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(DE.lower$year, DE.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "DE, Public")
points(DE.lower$year, DE.lower$perc.public*100, col = "blue", pch = 16)
lines(DE.upper$year, DE.upper$perc.public*100, col = "red")
points(DE.upper$year, DE.upper$perc.public*100, col = "red", pch = 16)
lines(DE.gov$year, DE.gov$perc.public*100, col = "darkgreen")
points(DE.gov$year, DE.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(DE.lower$year, DE.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "DE, Misc")
points(DE.lower$year, DE.lower$perc.misc*100, col = "blue", pch = 16)
lines(DE.upper$year, DE.upper$perc.misc*100, col = "red")
points(DE.upper$year, DE.upper$perc.misc*100, col = "red", pch = 16)
lines(DE.gov$year, DE.gov$perc.misc*100, col = "darkgreen")
points(DE.gov$year, DE.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     







plot(FL.lower$year, FL.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "FL, Business")
points(FL.lower$year, FL.lower$perc.business*100, col = "blue", pch = 16)
lines(FL.upper$year, FL.upper$perc.business*100, col = "red")
points(FL.upper$year, FL.upper$perc.business*100, col = "red", pch = 16)
lines(FL.gov$year, FL.gov$perc.business*100, col = "darkgreen")
points(FL.gov$year, FL.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(FL.lower$year, FL.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "FL, Political")
points(FL.lower$year, FL.lower$perc.political*100, col = "blue", pch = 16)
lines(FL.upper$year, FL.upper$perc.political*100, col = "red")
points(FL.upper$year, FL.upper$perc.political*100, col = "red", pch = 16)
lines(FL.gov$year, FL.gov$perc.political*100, col = "darkgreen")
points(FL.gov$year, FL.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(FL.lower$year, FL.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "FL, Union")
points(FL.lower$year, FL.lower$perc.union*100, col = "blue", pch = 16)
lines(FL.upper$year, FL.upper$perc.union*100, col = "red")
points(FL.upper$year, FL.upper$perc.union*100, col = "red", pch = 16)
lines(FL.gov$year, FL.gov$perc.union*100, col = "darkgreen")
points(FL.gov$year, FL.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(FL.lower$year, FL.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "FL, Advocacy")
points(FL.lower$year, FL.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(FL.upper$year, FL.upper$perc.advocacy*100, col = "red")
points(FL.upper$year, FL.upper$perc.advocacy*100, col = "red", pch = 16)
lines(FL.gov$year, FL.gov$perc.advocacy*100, col = "darkgreen")
points(FL.gov$year, FL.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(FL.lower$year, FL.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "FL, Public")
points(FL.lower$year, FL.lower$perc.public*100, col = "blue", pch = 16)
lines(FL.upper$year, FL.upper$perc.public*100, col = "red")
points(FL.upper$year, FL.upper$perc.public*100, col = "red", pch = 16)
lines(FL.gov$year, FL.gov$perc.public*100, col = "darkgreen")
points(FL.gov$year, FL.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(FL.lower$year, FL.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "FL, Misc")
points(FL.lower$year, FL.lower$perc.misc*100, col = "blue", pch = 16)
lines(FL.upper$year, FL.upper$perc.misc*100, col = "red")
points(FL.upper$year, FL.upper$perc.misc*100, col = "red", pch = 16)
lines(FL.gov$year, FL.gov$perc.misc*100, col = "darkgreen")
points(FL.gov$year, FL.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






















par(mfrow=c(3, 6)) #Establish aesthetic parameters of the figure

plot(GA.lower$year, GA.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 80), xlab = "Year", ylab = "Percent", main = "GA, Business")
points(GA.lower$year, GA.lower$perc.business*100, col = "blue", pch = 16)
lines(GA.upper$year, GA.upper$perc.business*100, col = "red")
points(GA.upper$year, GA.upper$perc.business*100, col = "red", pch = 16)
lines(GA.gov$year, GA.gov$perc.business*100, col = "darkgreen")
points(GA.gov$year, GA.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(GA.lower$year, GA.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 80), xlab = "Year", ylab = "Percent", main = "GA, Political")
points(GA.lower$year, GA.lower$perc.political*100, col = "blue", pch = 16)
lines(GA.upper$year, GA.upper$perc.political*100, col = "red")
points(GA.upper$year, GA.upper$perc.political*100, col = "red", pch = 16)
lines(GA.gov$year, GA.gov$perc.political*100, col = "darkgreen")
points(GA.gov$year, GA.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(GA.lower$year, GA.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 80), xlab = "Year", ylab = "Percent", main = "GA, Union")
points(GA.lower$year, GA.lower$perc.union*100, col = "blue", pch = 16)
lines(GA.upper$year, GA.upper$perc.union*100, col = "red")
points(GA.upper$year, GA.upper$perc.union*100, col = "red", pch = 16)
lines(GA.gov$year, GA.gov$perc.union*100, col = "darkgreen")
points(GA.gov$year, GA.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(GA.lower$year, GA.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 80), xlab = "Year", ylab = "Percent", main = "GA, Advocacy")
points(GA.lower$year, GA.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(GA.upper$year, GA.upper$perc.advocacy*100, col = "red")
points(GA.upper$year, GA.upper$perc.advocacy*100, col = "red", pch = 16)
lines(GA.gov$year, GA.gov$perc.advocacy*100, col = "darkgreen")
points(GA.gov$year, GA.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(GA.lower$year, GA.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 80), xlab = "Year", ylab = "Percent", main = "GA, Public")
points(GA.lower$year, GA.lower$perc.public*100, col = "blue", pch = 16)
lines(GA.upper$year, GA.upper$perc.public*100, col = "red")
points(GA.upper$year, GA.upper$perc.public*100, col = "red", pch = 16)
lines(GA.gov$year, GA.gov$perc.public*100, col = "darkgreen")
points(GA.gov$year, GA.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(GA.lower$year, GA.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 80), xlab = "Year", ylab = "Percent", main = "GA, Misc")
points(GA.lower$year, GA.lower$perc.misc*100, col = "blue", pch = 16)
lines(GA.upper$year, GA.upper$perc.misc*100, col = "red")
points(GA.upper$year, GA.upper$perc.misc*100, col = "red", pch = 16)
lines(GA.gov$year, GA.gov$perc.misc*100, col = "darkgreen")
points(GA.gov$year, GA.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






plot(HI.lower$year, HI.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "HI, Business")
points(HI.lower$year, HI.lower$perc.business*100, col = "blue", pch = 16)
lines(HI.upper$year, HI.upper$perc.business*100, col = "red")
points(HI.upper$year, HI.upper$perc.business*100, col = "red", pch = 16)
lines(HI.gov$year, HI.gov$perc.business*100, col = "darkgreen")
points(HI.gov$year, HI.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(HI.lower$year, HI.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "HI, Political")
points(HI.lower$year, HI.lower$perc.political*100, col = "blue", pch = 16)
lines(HI.upper$year, HI.upper$perc.political*100, col = "red")
points(HI.upper$year, HI.upper$perc.political*100, col = "red", pch = 16)
lines(HI.gov$year, HI.gov$perc.political*100, col = "darkgreen")
points(HI.gov$year, HI.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(HI.lower$year, HI.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "HI, Union")
points(HI.lower$year, HI.lower$perc.union*100, col = "blue", pch = 16)
lines(HI.upper$year, HI.upper$perc.union*100, col = "red")
points(HI.upper$year, HI.upper$perc.union*100, col = "red", pch = 16)
lines(HI.gov$year, HI.gov$perc.union*100, col = "darkgreen")
points(HI.gov$year, HI.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(HI.lower$year, HI.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "HI, Advocacy")
points(HI.lower$year, HI.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(HI.upper$year, HI.upper$perc.advocacy*100, col = "red")
points(HI.upper$year, HI.upper$perc.advocacy*100, col = "red", pch = 16)
lines(HI.gov$year, HI.gov$perc.advocacy*100, col = "darkgreen")
points(HI.gov$year, HI.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(HI.lower$year, HI.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "HI, Public")
points(HI.lower$year, HI.lower$perc.public*100, col = "blue", pch = 16)
lines(HI.upper$year, HI.upper$perc.public*100, col = "red")
points(HI.upper$year, HI.upper$perc.public*100, col = "red", pch = 16)
lines(HI.gov$year, HI.gov$perc.public*100, col = "darkgreen")
points(HI.gov$year, HI.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(HI.lower$year, HI.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "HI, Misc")
points(HI.lower$year, HI.lower$perc.misc*100, col = "blue", pch = 16)
lines(HI.upper$year, HI.upper$perc.misc*100, col = "red")
points(HI.upper$year, HI.upper$perc.misc*100, col = "red", pch = 16)
lines(HI.gov$year, HI.gov$perc.misc*100, col = "darkgreen")
points(HI.gov$year, HI.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     







plot(ID.lower$year, ID.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 75), xlab = "Year", ylab = "Percent", main = "ID, Business")
points(ID.lower$year, ID.lower$perc.business*100, col = "blue", pch = 16)
lines(ID.upper$year, ID.upper$perc.business*100, col = "red")
points(ID.upper$year, ID.upper$perc.business*100, col = "red", pch = 16)
lines(ID.gov$year, ID.gov$perc.business*100, col = "darkgreen")
points(ID.gov$year, ID.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(ID.lower$year, ID.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 75), xlab = "Year", ylab = "Percent", main = "ID, Political")
points(ID.lower$year, ID.lower$perc.political*100, col = "blue", pch = 16)
lines(ID.upper$year, ID.upper$perc.political*100, col = "red")
points(ID.upper$year, ID.upper$perc.political*100, col = "red", pch = 16)
lines(ID.gov$year, ID.gov$perc.political*100, col = "darkgreen")
points(ID.gov$year, ID.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(ID.lower$year, ID.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 75), xlab = "Year", ylab = "Percent", main = "ID, Union")
points(ID.lower$year, ID.lower$perc.union*100, col = "blue", pch = 16)
lines(ID.upper$year, ID.upper$perc.union*100, col = "red")
points(ID.upper$year, ID.upper$perc.union*100, col = "red", pch = 16)
lines(ID.gov$year, ID.gov$perc.union*100, col = "darkgreen")
points(ID.gov$year, ID.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(ID.lower$year, ID.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 75), xlab = "Year", ylab = "Percent", main = "ID, Advocacy")
points(ID.lower$year, ID.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(ID.upper$year, ID.upper$perc.advocacy*100, col = "red")
points(ID.upper$year, ID.upper$perc.advocacy*100, col = "red", pch = 16)
lines(ID.gov$year, ID.gov$perc.advocacy*100, col = "darkgreen")
points(ID.gov$year, ID.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(ID.lower$year, ID.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 75), xlab = "Year", ylab = "Percent", main = "ID, Public")
points(ID.lower$year, ID.lower$perc.public*100, col = "blue", pch = 16)
lines(ID.upper$year, ID.upper$perc.public*100, col = "red")
points(ID.upper$year, ID.upper$perc.public*100, col = "red", pch = 16)
lines(ID.gov$year, ID.gov$perc.public*100, col = "darkgreen")
points(ID.gov$year, ID.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(ID.lower$year, ID.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 75), xlab = "Year", ylab = "Percent", main = "ID, Misc")
points(ID.lower$year, ID.lower$perc.misc*100, col = "blue", pch = 16)
lines(ID.upper$year, ID.upper$perc.misc*100, col = "red")
points(ID.upper$year, ID.upper$perc.misc*100, col = "red", pch = 16)
lines(ID.gov$year, ID.gov$perc.misc*100, col = "darkgreen")
points(ID.gov$year, ID.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
























par(mfrow=c(3, 6)) #Establish aesthetic parameters of the figure

plot(IL.lower$year, IL.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "IL, Business")
points(IL.lower$year, IL.lower$perc.business*100, col = "blue", pch = 16)
lines(IL.upper$year, IL.upper$perc.business*100, col = "red")
points(IL.upper$year, IL.upper$perc.business*100, col = "red", pch = 16)
lines(IL.gov$year, IL.gov$perc.business*100, col = "darkgreen")
points(IL.gov$year, IL.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(IL.lower$year, IL.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "IL, Political")
points(IL.lower$year, IL.lower$perc.political*100, col = "blue", pch = 16)
lines(IL.upper$year, IL.upper$perc.political*100, col = "red")
points(IL.upper$year, IL.upper$perc.political*100, col = "red", pch = 16)
lines(IL.gov$year, IL.gov$perc.political*100, col = "darkgreen")
points(IL.gov$year, IL.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(IL.lower$year, IL.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "IL, Union")
points(IL.lower$year, IL.lower$perc.union*100, col = "blue", pch = 16)
lines(IL.upper$year, IL.upper$perc.union*100, col = "red")
points(IL.upper$year, IL.upper$perc.union*100, col = "red", pch = 16)
lines(IL.gov$year, IL.gov$perc.union*100, col = "darkgreen")
points(IL.gov$year, IL.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(IL.lower$year, IL.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "IL, Advocacy")
points(IL.lower$year, IL.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(IL.upper$year, IL.upper$perc.advocacy*100, col = "red")
points(IL.upper$year, IL.upper$perc.advocacy*100, col = "red", pch = 16)
lines(IL.gov$year, IL.gov$perc.advocacy*100, col = "darkgreen")
points(IL.gov$year, IL.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(IL.lower$year, IL.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "IL, Public")
points(IL.lower$year, IL.lower$perc.public*100, col = "blue", pch = 16)
lines(IL.upper$year, IL.upper$perc.public*100, col = "red")
points(IL.upper$year, IL.upper$perc.public*100, col = "red", pch = 16)
lines(IL.gov$year, IL.gov$perc.public*100, col = "darkgreen")
points(IL.gov$year, IL.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(IL.lower$year, IL.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "IL, Misc")
points(IL.lower$year, IL.lower$perc.misc*100, col = "blue", pch = 16)
lines(IL.upper$year, IL.upper$perc.misc*100, col = "red")
points(IL.upper$year, IL.upper$perc.misc*100, col = "red", pch = 16)
lines(IL.gov$year, IL.gov$perc.misc*100, col = "darkgreen")
points(IL.gov$year, IL.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






plot(IN.lower$year, IN.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "IN, Business")
points(IN.lower$year, IN.lower$perc.business*100, col = "blue", pch = 16)
lines(IN.upper$year, IN.upper$perc.business*100, col = "red")
points(IN.upper$year, IN.upper$perc.business*100, col = "red", pch = 16)
lines(IN.gov$year, IN.gov$perc.business*100, col = "darkgreen")
points(IN.gov$year, IN.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(IN.lower$year, IN.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "IN, Political")
points(IN.lower$year, IN.lower$perc.political*100, col = "blue", pch = 16)
lines(IN.upper$year, IN.upper$perc.political*100, col = "red")
points(IN.upper$year, IN.upper$perc.political*100, col = "red", pch = 16)
lines(IN.gov$year, IN.gov$perc.political*100, col = "darkgreen")
points(IN.gov$year, IN.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(IN.lower$year, IN.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "IN, Union")
points(IN.lower$year, IN.lower$perc.union*100, col = "blue", pch = 16)
lines(IN.upper$year, IN.upper$perc.union*100, col = "red")
points(IN.upper$year, IN.upper$perc.union*100, col = "red", pch = 16)
lines(IN.gov$year, IN.gov$perc.union*100, col = "darkgreen")
points(IN.gov$year, IN.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(IN.lower$year, IN.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "IN, Advocacy")
points(IN.lower$year, IN.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(IN.upper$year, IN.upper$perc.advocacy*100, col = "red")
points(IN.upper$year, IN.upper$perc.advocacy*100, col = "red", pch = 16)
lines(IN.gov$year, IN.gov$perc.advocacy*100, col = "darkgreen")
points(IN.gov$year, IN.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(IN.lower$year, IN.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "IN, Public")
points(IN.lower$year, IN.lower$perc.public*100, col = "blue", pch = 16)
lines(IN.upper$year, IN.upper$perc.public*100, col = "red")
points(IN.upper$year, IN.upper$perc.public*100, col = "red", pch = 16)
lines(IN.gov$year, IN.gov$perc.public*100, col = "darkgreen")
points(IN.gov$year, IN.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(IN.lower$year, IN.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "IN, Misc")
points(IN.lower$year, IN.lower$perc.misc*100, col = "blue", pch = 16)
lines(IN.upper$year, IN.upper$perc.misc*100, col = "red")
points(IN.upper$year, IN.upper$perc.misc*100, col = "red", pch = 16)
lines(IN.gov$year, IN.gov$perc.misc*100, col = "darkgreen")
points(IN.gov$year, IN.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     







plot(IA.lower$year, IA.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "IA, Business")
points(IA.lower$year, IA.lower$perc.business*100, col = "blue", pch = 16)
lines(IA.upper$year, IA.upper$perc.business*100, col = "red")
points(IA.upper$year, IA.upper$perc.business*100, col = "red", pch = 16)
lines(IA.gov$year, IA.gov$perc.business*100, col = "darkgreen")
points(IA.gov$year, IA.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(IA.lower$year, IA.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "IA, Political")
points(IA.lower$year, IA.lower$perc.political*100, col = "blue", pch = 16)
lines(IA.upper$year, IA.upper$perc.political*100, col = "red")
points(IA.upper$year, IA.upper$perc.political*100, col = "red", pch = 16)
lines(IA.gov$year, IA.gov$perc.political*100, col = "darkgreen")
points(IA.gov$year, IA.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(IA.lower$year, IA.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "IA, Union")
points(IA.lower$year, IA.lower$perc.union*100, col = "blue", pch = 16)
lines(IA.upper$year, IA.upper$perc.union*100, col = "red")
points(IA.upper$year, IA.upper$perc.union*100, col = "red", pch = 16)
lines(IA.gov$year, IA.gov$perc.union*100, col = "darkgreen")
points(IA.gov$year, IA.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(IA.lower$year, IA.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "IA, Advocacy")
points(IA.lower$year, IA.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(IA.upper$year, IA.upper$perc.advocacy*100, col = "red")
points(IA.upper$year, IA.upper$perc.advocacy*100, col = "red", pch = 16)
lines(IA.gov$year, IA.gov$perc.advocacy*100, col = "darkgreen")
points(IA.gov$year, IA.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(IA.lower$year, IA.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "IA, Public")
points(IA.lower$year, IA.lower$perc.public*100, col = "blue", pch = 16)
lines(IA.upper$year, IA.upper$perc.public*100, col = "red")
points(IA.upper$year, IA.upper$perc.public*100, col = "red", pch = 16)
lines(IA.gov$year, IA.gov$perc.public*100, col = "darkgreen")
points(IA.gov$year, IA.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(IA.lower$year, IA.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "IA, Misc")
points(IA.lower$year, IA.lower$perc.misc*100, col = "blue", pch = 16)
lines(IA.upper$year, IA.upper$perc.misc*100, col = "red")
points(IA.upper$year, IA.upper$perc.misc*100, col = "red", pch = 16)
lines(IA.gov$year, IA.gov$perc.misc*100, col = "darkgreen")
points(IA.gov$year, IA.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
























par(mfrow=c(3, 6)) #Establish aesthetic parameters of the figure

plot(KS.lower$year, KS.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "KS, Business")
points(KS.lower$year, KS.lower$perc.business*100, col = "blue", pch = 16)
lines(KS.upper$year, KS.upper$perc.business*100, col = "red")
points(KS.upper$year, KS.upper$perc.business*100, col = "red", pch = 16)
lines(KS.gov$year, KS.gov$perc.business*100, col = "darkgreen")
points(KS.gov$year, KS.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(KS.lower$year, KS.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "KS, Political")
points(KS.lower$year, KS.lower$perc.political*100, col = "blue", pch = 16)
lines(KS.upper$year, KS.upper$perc.political*100, col = "red")
points(KS.upper$year, KS.upper$perc.political*100, col = "red", pch = 16)
lines(KS.gov$year, KS.gov$perc.political*100, col = "darkgreen")
points(KS.gov$year, KS.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(KS.lower$year, KS.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "KS, Union")
points(KS.lower$year, KS.lower$perc.union*100, col = "blue", pch = 16)
lines(KS.upper$year, KS.upper$perc.union*100, col = "red")
points(KS.upper$year, KS.upper$perc.union*100, col = "red", pch = 16)
lines(KS.gov$year, KS.gov$perc.union*100, col = "darkgreen")
points(KS.gov$year, KS.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(KS.lower$year, KS.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "KS, Advocacy")
points(KS.lower$year, KS.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(KS.upper$year, KS.upper$perc.advocacy*100, col = "red")
points(KS.upper$year, KS.upper$perc.advocacy*100, col = "red", pch = 16)
lines(KS.gov$year, KS.gov$perc.advocacy*100, col = "darkgreen")
points(KS.gov$year, KS.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(KS.lower$year, KS.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "KS, Public")
points(KS.lower$year, KS.lower$perc.public*100, col = "blue", pch = 16)
lines(KS.upper$year, KS.upper$perc.public*100, col = "red")
points(KS.upper$year, KS.upper$perc.public*100, col = "red", pch = 16)
lines(KS.gov$year, KS.gov$perc.public*100, col = "darkgreen")
points(KS.gov$year, KS.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(KS.lower$year, KS.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "KS, Misc")
points(KS.lower$year, KS.lower$perc.misc*100, col = "blue", pch = 16)
lines(KS.upper$year, KS.upper$perc.misc*100, col = "red")
points(KS.upper$year, KS.upper$perc.misc*100, col = "red", pch = 16)
lines(KS.gov$year, KS.gov$perc.misc*100, col = "darkgreen")
points(KS.gov$year, KS.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






plot(KY.lower$year, KY.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "KY, Business")
points(KY.lower$year, KY.lower$perc.business*100, col = "blue", pch = 16)
lines(KY.upper$year, KY.upper$perc.business*100, col = "red")
points(KY.upper$year, KY.upper$perc.business*100, col = "red", pch = 16)
lines(KY.gov$year, KY.gov$perc.business*100, col = "darkgreen")
points(KY.gov$year, KY.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(KY.lower$year, KY.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "KY, Political")
points(KY.lower$year, KY.lower$perc.political*100, col = "blue", pch = 16)
lines(KY.upper$year, KY.upper$perc.political*100, col = "red")
points(KY.upper$year, KY.upper$perc.political*100, col = "red", pch = 16)
lines(KY.gov$year, KY.gov$perc.political*100, col = "darkgreen")
points(KY.gov$year, KY.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(KY.lower$year, KY.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "KY, Union")
points(KY.lower$year, KY.lower$perc.union*100, col = "blue", pch = 16)
lines(KY.upper$year, KY.upper$perc.union*100, col = "red")
points(KY.upper$year, KY.upper$perc.union*100, col = "red", pch = 16)
lines(KY.gov$year, KY.gov$perc.union*100, col = "darkgreen")
points(KY.gov$year, KY.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(KY.lower$year, KY.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "KY, Advocacy")
points(KY.lower$year, KY.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(KY.upper$year, KY.upper$perc.advocacy*100, col = "red")
points(KY.upper$year, KY.upper$perc.advocacy*100, col = "red", pch = 16)
lines(KY.gov$year, KY.gov$perc.advocacy*100, col = "darkgreen")
points(KY.gov$year, KY.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(KY.lower$year, KY.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "KY, Public")
points(KY.lower$year, KY.lower$perc.public*100, col = "blue", pch = 16)
lines(KY.upper$year, KY.upper$perc.public*100, col = "red")
points(KY.upper$year, KY.upper$perc.public*100, col = "red", pch = 16)
lines(KY.gov$year, KY.gov$perc.public*100, col = "darkgreen")
points(KY.gov$year, KY.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(KY.lower$year, KY.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "KY, Misc")
points(KY.lower$year, KY.lower$perc.misc*100, col = "blue", pch = 16)
lines(KY.upper$year, KY.upper$perc.misc*100, col = "red")
points(KY.upper$year, KY.upper$perc.misc*100, col = "red", pch = 16)
lines(KY.gov$year, KY.gov$perc.misc*100, col = "darkgreen")
points(KY.gov$year, KY.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     







plot(LA.lower$year, LA.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "LA, Business")
points(LA.lower$year, LA.lower$perc.business*100, col = "blue", pch = 16)
lines(LA.upper$year, LA.upper$perc.business*100, col = "red")
points(LA.upper$year, LA.upper$perc.business*100, col = "red", pch = 16)
lines(LA.gov$year, LA.gov$perc.business*100, col = "darkgreen")
points(LA.gov$year, LA.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(LA.lower$year, LA.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "LA, Political")
points(LA.lower$year, LA.lower$perc.political*100, col = "blue", pch = 16)
lines(LA.upper$year, LA.upper$perc.political*100, col = "red")
points(LA.upper$year, LA.upper$perc.political*100, col = "red", pch = 16)
lines(LA.gov$year, LA.gov$perc.political*100, col = "darkgreen")
points(LA.gov$year, LA.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(LA.lower$year, LA.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "LA, Union")
points(LA.lower$year, LA.lower$perc.union*100, col = "blue", pch = 16)
lines(LA.upper$year, LA.upper$perc.union*100, col = "red")
points(LA.upper$year, LA.upper$perc.union*100, col = "red", pch = 16)
lines(LA.gov$year, LA.gov$perc.union*100, col = "darkgreen")
points(LA.gov$year, LA.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(LA.lower$year, LA.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "LA, Advocacy")
points(LA.lower$year, LA.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(LA.upper$year, LA.upper$perc.advocacy*100, col = "red")
points(LA.upper$year, LA.upper$perc.advocacy*100, col = "red", pch = 16)
lines(LA.gov$year, LA.gov$perc.advocacy*100, col = "darkgreen")
points(LA.gov$year, LA.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(LA.lower$year, LA.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "LA, Public")
points(LA.lower$year, LA.lower$perc.public*100, col = "blue", pch = 16)
lines(LA.upper$year, LA.upper$perc.public*100, col = "red")
points(LA.upper$year, LA.upper$perc.public*100, col = "red", pch = 16)
lines(LA.gov$year, LA.gov$perc.public*100, col = "darkgreen")
points(LA.gov$year, LA.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(LA.lower$year, LA.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "LA, Misc")
points(LA.lower$year, LA.lower$perc.misc*100, col = "blue", pch = 16)
lines(LA.upper$year, LA.upper$perc.misc*100, col = "red")
points(LA.upper$year, LA.upper$perc.misc*100, col = "red", pch = 16)
lines(LA.gov$year, LA.gov$perc.misc*100, col = "darkgreen")
points(LA.gov$year, LA.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

























par(mfrow=c(3, 6)) #Establish aesthetic parameters of the figure

plot(ME.lower$year, ME.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 100), xlab = "Year", ylab = "Percent", main = "ME, Business")
points(ME.lower$year, ME.lower$perc.business*100, col = "blue", pch = 16)
lines(ME.upper$year, ME.upper$perc.business*100, col = "red")
points(ME.upper$year, ME.upper$perc.business*100, col = "red", pch = 16)
lines(ME.gov$year, ME.gov$perc.business*100, col = "darkgreen")
points(ME.gov$year, ME.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(ME.lower$year, ME.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 100), xlab = "Year", ylab = "Percent", main = "ME, Political")
points(ME.lower$year, ME.lower$perc.political*100, col = "blue", pch = 16)
lines(ME.upper$year, ME.upper$perc.political*100, col = "red")
points(ME.upper$year, ME.upper$perc.political*100, col = "red", pch = 16)
lines(ME.gov$year, ME.gov$perc.political*100, col = "darkgreen")
points(ME.gov$year, ME.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(ME.lower$year, ME.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "ME, Union")
points(ME.lower$year, ME.lower$perc.union*100, col = "blue", pch = 16)
lines(ME.upper$year, ME.upper$perc.union*100, col = "red")
points(ME.upper$year, ME.upper$perc.union*100, col = "red", pch = 16)
lines(ME.gov$year, ME.gov$perc.union*100, col = "darkgreen")
points(ME.gov$year, ME.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(ME.lower$year, ME.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 100), xlab = "Year", ylab = "Percent", main = "ME, Advocacy")
points(ME.lower$year, ME.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(ME.upper$year, ME.upper$perc.advocacy*100, col = "red")
points(ME.upper$year, ME.upper$perc.advocacy*100, col = "red", pch = 16)
lines(ME.gov$year, ME.gov$perc.advocacy*100, col = "darkgreen")
points(ME.gov$year, ME.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(ME.lower$year, ME.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 100), xlab = "Year", ylab = "Percent", main = "ME, Public")
points(ME.lower$year, ME.lower$perc.public*100, col = "blue", pch = 16)
lines(ME.upper$year, ME.upper$perc.public*100, col = "red")
points(ME.upper$year, ME.upper$perc.public*100, col = "red", pch = 16)
lines(ME.gov$year, ME.gov$perc.public*100, col = "darkgreen")
points(ME.gov$year, ME.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(ME.lower$year, ME.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 100), xlab = "Year", ylab = "Percent", main = "ME, Misc")
points(ME.lower$year, ME.lower$perc.misc*100, col = "blue", pch = 16)
lines(ME.upper$year, ME.upper$perc.misc*100, col = "red")
points(ME.upper$year, ME.upper$perc.misc*100, col = "red", pch = 16)
lines(ME.gov$year, ME.gov$perc.misc*100, col = "darkgreen")
points(ME.gov$year, ME.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






plot(MD.lower$year, MD.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MD, Business")
points(MD.lower$year, MD.lower$perc.business*100, col = "blue", pch = 16)
lines(MD.upper$year, MD.upper$perc.business*100, col = "red")
points(MD.upper$year, MD.upper$perc.business*100, col = "red", pch = 16)
lines(MD.gov$year, MD.gov$perc.business*100, col = "darkgreen")
points(MD.gov$year, MD.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(MD.lower$year, MD.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MD, Political")
points(MD.lower$year, MD.lower$perc.political*100, col = "blue", pch = 16)
lines(MD.upper$year, MD.upper$perc.political*100, col = "red")
points(MD.upper$year, MD.upper$perc.political*100, col = "red", pch = 16)
lines(MD.gov$year, MD.gov$perc.political*100, col = "darkgreen")
points(MD.gov$year, MD.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MD.lower$year, MD.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MD, Union")
points(MD.lower$year, MD.lower$perc.union*100, col = "blue", pch = 16)
lines(MD.upper$year, MD.upper$perc.union*100, col = "red")
points(MD.upper$year, MD.upper$perc.union*100, col = "red", pch = 16)
lines(MD.gov$year, MD.gov$perc.union*100, col = "darkgreen")
points(MD.gov$year, MD.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MD.lower$year, MD.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MD, Advocacy")
points(MD.lower$year, MD.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(MD.upper$year, MD.upper$perc.advocacy*100, col = "red")
points(MD.upper$year, MD.upper$perc.advocacy*100, col = "red", pch = 16)
lines(MD.gov$year, MD.gov$perc.advocacy*100, col = "darkgreen")
points(MD.gov$year, MD.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MD.lower$year, MD.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MD, Public")
points(MD.lower$year, MD.lower$perc.public*100, col = "blue", pch = 16)
lines(MD.upper$year, MD.upper$perc.public*100, col = "red")
points(MD.upper$year, MD.upper$perc.public*100, col = "red", pch = 16)
lines(MD.gov$year, MD.gov$perc.public*100, col = "darkgreen")
points(MD.gov$year, MD.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MD.lower$year, MD.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MD, Misc")
points(MD.lower$year, MD.lower$perc.misc*100, col = "blue", pch = 16)
lines(MD.upper$year, MD.upper$perc.misc*100, col = "red")
points(MD.upper$year, MD.upper$perc.misc*100, col = "red", pch = 16)
lines(MD.gov$year, MD.gov$perc.misc*100, col = "darkgreen")
points(MD.gov$year, MD.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     







plot(MA.lower$year, MA.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MA, Business")
points(MA.lower$year, MA.lower$perc.business*100, col = "blue", pch = 16)
lines(MA.upper$year, MA.upper$perc.business*100, col = "red")
points(MA.upper$year, MA.upper$perc.business*100, col = "red", pch = 16)
lines(MA.gov$year, MA.gov$perc.business*100, col = "darkgreen")
points(MA.gov$year, MA.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(MA.lower$year, MA.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MA, Political")
points(MA.lower$year, MA.lower$perc.political*100, col = "blue", pch = 16)
lines(MA.upper$year, MA.upper$perc.political*100, col = "red")
points(MA.upper$year, MA.upper$perc.political*100, col = "red", pch = 16)
lines(MA.gov$year, MA.gov$perc.political*100, col = "darkgreen")
points(MA.gov$year, MA.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MA.lower$year, MA.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MA, Union")
points(MA.lower$year, MA.lower$perc.union*100, col = "blue", pch = 16)
lines(MA.upper$year, MA.upper$perc.union*100, col = "red")
points(MA.upper$year, MA.upper$perc.union*100, col = "red", pch = 16)
lines(MA.gov$year, MA.gov$perc.union*100, col = "darkgreen")
points(MA.gov$year, MA.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MA.lower$year, MA.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MA, Advocacy")
points(MA.lower$year, MA.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(MA.upper$year, MA.upper$perc.advocacy*100, col = "red")
points(MA.upper$year, MA.upper$perc.advocacy*100, col = "red", pch = 16)
lines(MA.gov$year, MA.gov$perc.advocacy*100, col = "darkgreen")
points(MA.gov$year, MA.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MA.lower$year, MA.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MA, Public")
points(MA.lower$year, MA.lower$perc.public*100, col = "blue", pch = 16)
lines(MA.upper$year, MA.upper$perc.public*100, col = "red")
points(MA.upper$year, MA.upper$perc.public*100, col = "red", pch = 16)
lines(MA.gov$year, MA.gov$perc.public*100, col = "darkgreen")
points(MA.gov$year, MA.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MA.lower$year, MA.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MA, Misc")
points(MA.lower$year, MA.lower$perc.misc*100, col = "blue", pch = 16)
lines(MA.upper$year, MA.upper$perc.misc*100, col = "red")
points(MA.upper$year, MA.upper$perc.misc*100, col = "red", pch = 16)
lines(MA.gov$year, MA.gov$perc.misc*100, col = "darkgreen")
points(MA.gov$year, MA.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

























par(mfrow=c(3, 6)) #Establish aesthetic parameters of the figure

plot(MI.lower$year, MI.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MI, Business")
points(MI.lower$year, MI.lower$perc.business*100, col = "blue", pch = 16)
lines(MI.upper$year, MI.upper$perc.business*100, col = "red")
points(MI.upper$year, MI.upper$perc.business*100, col = "red", pch = 16)
lines(MI.gov$year, MI.gov$perc.business*100, col = "darkgreen")
points(MI.gov$year, MI.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(MI.lower$year, MI.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MI, Political")
points(MI.lower$year, MI.lower$perc.political*100, col = "blue", pch = 16)
lines(MI.upper$year, MI.upper$perc.political*100, col = "red")
points(MI.upper$year, MI.upper$perc.political*100, col = "red", pch = 16)
lines(MI.gov$year, MI.gov$perc.political*100, col = "darkgreen")
points(MI.gov$year, MI.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MI.lower$year, MI.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MI, Union")
points(MI.lower$year, MI.lower$perc.union*100, col = "blue", pch = 16)
lines(MI.upper$year, MI.upper$perc.union*100, col = "red")
points(MI.upper$year, MI.upper$perc.union*100, col = "red", pch = 16)
lines(MI.gov$year, MI.gov$perc.union*100, col = "darkgreen")
points(MI.gov$year, MI.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MI.lower$year, MI.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MI, Advocacy")
points(MI.lower$year, MI.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(MI.upper$year, MI.upper$perc.advocacy*100, col = "red")
points(MI.upper$year, MI.upper$perc.advocacy*100, col = "red", pch = 16)
lines(MI.gov$year, MI.gov$perc.advocacy*100, col = "darkgreen")
points(MI.gov$year, MI.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MI.lower$year, MI.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MI, Public")
points(MI.lower$year, MI.lower$perc.public*100, col = "blue", pch = 16)
lines(MI.upper$year, MI.upper$perc.public*100, col = "red")
points(MI.upper$year, MI.upper$perc.public*100, col = "red", pch = 16)
lines(MI.gov$year, MI.gov$perc.public*100, col = "darkgreen")
points(MI.gov$year, MI.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MI.lower$year, MI.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MI, Misc")
points(MI.lower$year, MI.lower$perc.misc*100, col = "blue", pch = 16)
lines(MI.upper$year, MI.upper$perc.misc*100, col = "red")
points(MI.upper$year, MI.upper$perc.misc*100, col = "red", pch = 16)
lines(MI.gov$year, MI.gov$perc.misc*100, col = "darkgreen")
points(MI.gov$year, MI.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






plot(MN.lower$year, MN.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MN, Business")
points(MN.lower$year, MN.lower$perc.business*100, col = "blue", pch = 16)
lines(MN.upper$year, MN.upper$perc.business*100, col = "red")
points(MN.upper$year, MN.upper$perc.business*100, col = "red", pch = 16)
lines(MN.gov$year, MN.gov$perc.business*100, col = "darkgreen")
points(MN.gov$year, MN.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(MN.lower$year, MN.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MN, Political")
points(MN.lower$year, MN.lower$perc.political*100, col = "blue", pch = 16)
lines(MN.upper$year, MN.upper$perc.political*100, col = "red")
points(MN.upper$year, MN.upper$perc.political*100, col = "red", pch = 16)
lines(MN.gov$year, MN.gov$perc.political*100, col = "darkgreen")
points(MN.gov$year, MN.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MN.lower$year, MN.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MN, Union")
points(MN.lower$year, MN.lower$perc.union*100, col = "blue", pch = 16)
lines(MN.upper$year, MN.upper$perc.union*100, col = "red")
points(MN.upper$year, MN.upper$perc.union*100, col = "red", pch = 16)
lines(MN.gov$year, MN.gov$perc.union*100, col = "darkgreen")
points(MN.gov$year, MN.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MN.lower$year, MN.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MN, Advocacy")
points(MN.lower$year, MN.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(MN.upper$year, MN.upper$perc.advocacy*100, col = "red")
points(MN.upper$year, MN.upper$perc.advocacy*100, col = "red", pch = 16)
lines(MN.gov$year, MN.gov$perc.advocacy*100, col = "darkgreen")
points(MN.gov$year, MN.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MN.lower$year, MN.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MN, Public")
points(MN.lower$year, MN.lower$perc.public*100, col = "blue", pch = 16)
lines(MN.upper$year, MN.upper$perc.public*100, col = "red")
points(MN.upper$year, MN.upper$perc.public*100, col = "red", pch = 16)
lines(MN.gov$year, MN.gov$perc.public*100, col = "darkgreen")
points(MN.gov$year, MN.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MN.lower$year, MN.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MN, Misc")
points(MN.lower$year, MN.lower$perc.misc*100, col = "blue", pch = 16)
lines(MN.upper$year, MN.upper$perc.misc*100, col = "red")
points(MN.upper$year, MN.upper$perc.misc*100, col = "red", pch = 16)
lines(MN.gov$year, MN.gov$perc.misc*100, col = "darkgreen")
points(MN.gov$year, MN.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     







plot(MS.lower$year, MS.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "MS, Business")
points(MS.lower$year, MS.lower$perc.business*100, col = "blue", pch = 16)
lines(MS.upper$year, MS.upper$perc.business*100, col = "red")
points(MS.upper$year, MS.upper$perc.business*100, col = "red", pch = 16)
lines(MS.gov$year, MS.gov$perc.business*100, col = "darkgreen")
points(MS.gov$year, MS.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(MS.lower$year, MS.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "MS, Political")
points(MS.lower$year, MS.lower$perc.political*100, col = "blue", pch = 16)
lines(MS.upper$year, MS.upper$perc.political*100, col = "red")
points(MS.upper$year, MS.upper$perc.political*100, col = "red", pch = 16)
lines(MS.gov$year, MS.gov$perc.political*100, col = "darkgreen")
points(MS.gov$year, MS.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MS.lower$year, MS.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "MS, Union")
points(MS.lower$year, MS.lower$perc.union*100, col = "blue", pch = 16)
lines(MS.upper$year, MS.upper$perc.union*100, col = "red")
points(MS.upper$year, MS.upper$perc.union*100, col = "red", pch = 16)
lines(MS.gov$year, MS.gov$perc.union*100, col = "darkgreen")
points(MS.gov$year, MS.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MS.lower$year, MS.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "MS, Advocacy")
points(MS.lower$year, MS.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(MS.upper$year, MS.upper$perc.advocacy*100, col = "red")
points(MS.upper$year, MS.upper$perc.advocacy*100, col = "red", pch = 16)
lines(MS.gov$year, MS.gov$perc.advocacy*100, col = "darkgreen")
points(MS.gov$year, MS.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MS.lower$year, MS.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "MS, Public")
points(MS.lower$year, MS.lower$perc.public*100, col = "blue", pch = 16)
lines(MS.upper$year, MS.upper$perc.public*100, col = "red")
points(MS.upper$year, MS.upper$perc.public*100, col = "red", pch = 16)
lines(MS.gov$year, MS.gov$perc.public*100, col = "darkgreen")
points(MS.gov$year, MS.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MS.lower$year, MS.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "MS, Misc")
points(MS.lower$year, MS.lower$perc.misc*100, col = "blue", pch = 16)
lines(MS.upper$year, MS.upper$perc.misc*100, col = "red")
points(MS.upper$year, MS.upper$perc.misc*100, col = "red", pch = 16)
lines(MS.gov$year, MS.gov$perc.misc*100, col = "darkgreen")
points(MS.gov$year, MS.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

























par(mfrow=c(3, 6)) #Establish aesthetic parameters of the figure

plot(MO.lower$year, MO.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "MO, Business")
points(MO.lower$year, MO.lower$perc.business*100, col = "blue", pch = 16)
lines(MO.upper$year, MO.upper$perc.business*100, col = "red")
points(MO.upper$year, MO.upper$perc.business*100, col = "red", pch = 16)
lines(MO.gov$year, MO.gov$perc.business*100, col = "darkgreen")
points(MO.gov$year, MO.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(MO.lower$year, MO.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "MO, Political")
points(MO.lower$year, MO.lower$perc.political*100, col = "blue", pch = 16)
lines(MO.upper$year, MO.upper$perc.political*100, col = "red")
points(MO.upper$year, MO.upper$perc.political*100, col = "red", pch = 16)
lines(MO.gov$year, MO.gov$perc.political*100, col = "darkgreen")
points(MO.gov$year, MO.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MO.lower$year, MO.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "MO, Union")
points(MO.lower$year, MO.lower$perc.union*100, col = "blue", pch = 16)
lines(MO.upper$year, MO.upper$perc.union*100, col = "red")
points(MO.upper$year, MO.upper$perc.union*100, col = "red", pch = 16)
lines(MO.gov$year, MO.gov$perc.union*100, col = "darkgreen")
points(MO.gov$year, MO.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MO.lower$year, MO.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "MO, Advocacy")
points(MO.lower$year, MO.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(MO.upper$year, MO.upper$perc.advocacy*100, col = "red")
points(MO.upper$year, MO.upper$perc.advocacy*100, col = "red", pch = 16)
lines(MO.gov$year, MO.gov$perc.advocacy*100, col = "darkgreen")
points(MO.gov$year, MO.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MO.lower$year, MO.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "MO, Public")
points(MO.lower$year, MO.lower$perc.public*100, col = "blue", pch = 16)
lines(MO.upper$year, MO.upper$perc.public*100, col = "red")
points(MO.upper$year, MO.upper$perc.public*100, col = "red", pch = 16)
lines(MO.gov$year, MO.gov$perc.public*100, col = "darkgreen")
points(MO.gov$year, MO.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MO.lower$year, MO.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "MO, Misc")
points(MO.lower$year, MO.lower$perc.misc*100, col = "blue", pch = 16)
lines(MO.upper$year, MO.upper$perc.misc*100, col = "red")
points(MO.upper$year, MO.upper$perc.misc*100, col = "red", pch = 16)
lines(MO.gov$year, MO.gov$perc.misc*100, col = "darkgreen")
points(MO.gov$year, MO.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






plot(MT.lower$year, MT.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MT, Business")
points(MT.lower$year, MT.lower$perc.business*100, col = "blue", pch = 16)
lines(MT.upper$year, MT.upper$perc.business*100, col = "red")
points(MT.upper$year, MT.upper$perc.business*100, col = "red", pch = 16)
lines(MT.gov$year, MT.gov$perc.business*100, col = "darkgreen")
points(MT.gov$year, MT.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(MT.lower$year, MT.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MT, Political")
points(MT.lower$year, MT.lower$perc.political*100, col = "blue", pch = 16)
lines(MT.upper$year, MT.upper$perc.political*100, col = "red")
points(MT.upper$year, MT.upper$perc.political*100, col = "red", pch = 16)
lines(MT.gov$year, MT.gov$perc.political*100, col = "darkgreen")
points(MT.gov$year, MT.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MT.lower$year, MT.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MT, Union")
points(MT.lower$year, MT.lower$perc.union*100, col = "blue", pch = 16)
lines(MT.upper$year, MT.upper$perc.union*100, col = "red")
points(MT.upper$year, MT.upper$perc.union*100, col = "red", pch = 16)
lines(MT.gov$year, MT.gov$perc.union*100, col = "darkgreen")
points(MT.gov$year, MT.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MT.lower$year, MT.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MT, Advocacy")
points(MT.lower$year, MT.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(MT.upper$year, MT.upper$perc.advocacy*100, col = "red")
points(MT.upper$year, MT.upper$perc.advocacy*100, col = "red", pch = 16)
lines(MT.gov$year, MT.gov$perc.advocacy*100, col = "darkgreen")
points(MT.gov$year, MT.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MT.lower$year, MT.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MT, Public")
points(MT.lower$year, MT.lower$perc.public*100, col = "blue", pch = 16)
lines(MT.upper$year, MT.upper$perc.public*100, col = "red")
points(MT.upper$year, MT.upper$perc.public*100, col = "red", pch = 16)
lines(MT.gov$year, MT.gov$perc.public*100, col = "darkgreen")
points(MT.gov$year, MT.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(MT.lower$year, MT.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "MT, Misc")
points(MT.lower$year, MT.lower$perc.misc*100, col = "blue", pch = 16)
lines(MT.upper$year, MT.upper$perc.misc*100, col = "red")
points(MT.upper$year, MT.upper$perc.misc*100, col = "red", pch = 16)
lines(MT.gov$year, MT.gov$perc.misc*100, col = "darkgreen")
points(MT.gov$year, MT.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     







plot(NE.lower$year, NE.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 65), xlab = "Year", ylab = "Percent", main = "NE, Business")
points(NE.lower$year, NE.lower$perc.business*100, col = "blue", pch = 16)
lines(NE.upper$year, NE.upper$perc.business*100, col = "red")
points(NE.upper$year, NE.upper$perc.business*100, col = "red", pch = 16)
lines(NE.gov$year, NE.gov$perc.business*100, col = "darkgreen")
points(NE.gov$year, NE.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(NE.lower$year, NE.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 65), xlab = "Year", ylab = "Percent", main = "NE, Political")
points(NE.lower$year, NE.lower$perc.political*100, col = "blue", pch = 16)
lines(NE.upper$year, NE.upper$perc.political*100, col = "red")
points(NE.upper$year, NE.upper$perc.political*100, col = "red", pch = 16)
lines(NE.gov$year, NE.gov$perc.political*100, col = "darkgreen")
points(NE.gov$year, NE.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NE.lower$year, NE.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 65), xlab = "Year", ylab = "Percent", main = "NE, Union")
points(NE.lower$year, NE.lower$perc.union*100, col = "blue", pch = 16)
lines(NE.upper$year, NE.upper$perc.union*100, col = "red")
points(NE.upper$year, NE.upper$perc.union*100, col = "red", pch = 16)
lines(NE.gov$year, NE.gov$perc.union*100, col = "darkgreen")
points(NE.gov$year, NE.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NE.lower$year, NE.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 65), xlab = "Year", ylab = "Percent", main = "NE, Advocacy")
points(NE.lower$year, NE.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(NE.upper$year, NE.upper$perc.advocacy*100, col = "red")
points(NE.upper$year, NE.upper$perc.advocacy*100, col = "red", pch = 16)
lines(NE.gov$year, NE.gov$perc.advocacy*100, col = "darkgreen")
points(NE.gov$year, NE.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NE.lower$year, NE.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 65), xlab = "Year", ylab = "Percent", main = "NE, Public")
points(NE.lower$year, NE.lower$perc.public*100, col = "blue", pch = 16)
lines(NE.upper$year, NE.upper$perc.public*100, col = "red")
points(NE.upper$year, NE.upper$perc.public*100, col = "red", pch = 16)
lines(NE.gov$year, NE.gov$perc.public*100, col = "darkgreen")
points(NE.gov$year, NE.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NE.lower$year, NE.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 65), xlab = "Year", ylab = "Percent", main = "NE, Misc")
points(NE.lower$year, NE.lower$perc.misc*100, col = "blue", pch = 16)
lines(NE.upper$year, NE.upper$perc.misc*100, col = "red")
points(NE.upper$year, NE.upper$perc.misc*100, col = "red", pch = 16)
lines(NE.gov$year, NE.gov$perc.misc*100, col = "darkgreen")
points(NE.gov$year, NE.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

























par(mfrow=c(3, 6)) #Establish aesthetic parameters of the figure

plot(ND.lower$year, ND.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "ND, Business")
points(ND.lower$year, ND.lower$perc.business*100, col = "blue", pch = 16)
lines(ND.upper$year, ND.upper$perc.business*100, col = "red")
points(ND.upper$year, ND.upper$perc.business*100, col = "red", pch = 16)
lines(ND.gov$year, ND.gov$perc.business*100, col = "darkgreen")
points(ND.gov$year, ND.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(ND.lower$year, ND.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "ND, Political")
points(ND.lower$year, ND.lower$perc.political*100, col = "blue", pch = 16)
lines(ND.upper$year, ND.upper$perc.political*100, col = "red")
points(ND.upper$year, ND.upper$perc.political*100, col = "red", pch = 16)
lines(ND.gov$year, ND.gov$perc.political*100, col = "darkgreen")
points(ND.gov$year, ND.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(ND.lower$year, ND.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "ND, Union")
points(ND.lower$year, ND.lower$perc.union*100, col = "blue", pch = 16)
lines(ND.upper$year, ND.upper$perc.union*100, col = "red")
points(ND.upper$year, ND.upper$perc.union*100, col = "red", pch = 16)
lines(ND.gov$year, ND.gov$perc.union*100, col = "darkgreen")
points(ND.gov$year, ND.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(ND.lower$year, ND.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "ND, Advocacy")
points(ND.lower$year, ND.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(ND.upper$year, ND.upper$perc.advocacy*100, col = "red")
points(ND.upper$year, ND.upper$perc.advocacy*100, col = "red", pch = 16)
lines(ND.gov$year, ND.gov$perc.advocacy*100, col = "darkgreen")
points(ND.gov$year, ND.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(ND.lower$year, ND.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "ND, Public")
points(ND.lower$year, ND.lower$perc.public*100, col = "blue", pch = 16)
lines(ND.upper$year, ND.upper$perc.public*100, col = "red")
points(ND.upper$year, ND.upper$perc.public*100, col = "red", pch = 16)
lines(ND.gov$year, ND.gov$perc.public*100, col = "darkgreen")
points(ND.gov$year, ND.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(ND.lower$year, ND.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "ND, Misc")
points(ND.lower$year, ND.lower$perc.misc*100, col = "blue", pch = 16)
lines(ND.upper$year, ND.upper$perc.misc*100, col = "red")
points(ND.upper$year, ND.upper$perc.misc*100, col = "red", pch = 16)
lines(ND.gov$year, ND.gov$perc.misc*100, col = "darkgreen")
points(ND.gov$year, ND.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






plot(OH.lower$year, OH.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "OH, Business")
points(OH.lower$year, OH.lower$perc.business*100, col = "blue", pch = 16)
lines(OH.upper$year, OH.upper$perc.business*100, col = "red")
points(OH.upper$year, OH.upper$perc.business*100, col = "red", pch = 16)
lines(OH.gov$year, OH.gov$perc.business*100, col = "darkgreen")
points(OH.gov$year, OH.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(OH.lower$year, OH.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "OH, Political")
points(OH.lower$year, OH.lower$perc.political*100, col = "blue", pch = 16)
lines(OH.upper$year, OH.upper$perc.political*100, col = "red")
points(OH.upper$year, OH.upper$perc.political*100, col = "red", pch = 16)
lines(OH.gov$year, OH.gov$perc.political*100, col = "darkgreen")
points(OH.gov$year, OH.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(OH.lower$year, OH.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "OH, Union")
points(OH.lower$year, OH.lower$perc.union*100, col = "blue", pch = 16)
lines(OH.upper$year, OH.upper$perc.union*100, col = "red")
points(OH.upper$year, OH.upper$perc.union*100, col = "red", pch = 16)
lines(OH.gov$year, OH.gov$perc.union*100, col = "darkgreen")
points(OH.gov$year, OH.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(OH.lower$year, OH.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "OH, Advocacy")
points(OH.lower$year, OH.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(OH.upper$year, OH.upper$perc.advocacy*100, col = "red")
points(OH.upper$year, OH.upper$perc.advocacy*100, col = "red", pch = 16)
lines(OH.gov$year, OH.gov$perc.advocacy*100, col = "darkgreen")
points(OH.gov$year, OH.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(OH.lower$year, OH.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "OH, Public")
points(OH.lower$year, OH.lower$perc.public*100, col = "blue", pch = 16)
lines(OH.upper$year, OH.upper$perc.public*100, col = "red")
points(OH.upper$year, OH.upper$perc.public*100, col = "red", pch = 16)
lines(OH.gov$year, OH.gov$perc.public*100, col = "darkgreen")
points(OH.gov$year, OH.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(OH.lower$year, OH.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "OH, Misc")
points(OH.lower$year, OH.lower$perc.misc*100, col = "blue", pch = 16)
lines(OH.upper$year, OH.upper$perc.misc*100, col = "red")
points(OH.upper$year, OH.upper$perc.misc*100, col = "red", pch = 16)
lines(OH.gov$year, OH.gov$perc.misc*100, col = "darkgreen")
points(OH.gov$year, OH.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     







plot(OK.lower$year, OK.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "OK, Business")
points(OK.lower$year, OK.lower$perc.business*100, col = "blue", pch = 16)
lines(OK.upper$year, OK.upper$perc.business*100, col = "red")
points(OK.upper$year, OK.upper$perc.business*100, col = "red", pch = 16)
lines(OK.gov$year, OK.gov$perc.business*100, col = "darkgreen")
points(OK.gov$year, OK.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(OK.lower$year, OK.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "OK, Political")
points(OK.lower$year, OK.lower$perc.political*100, col = "blue", pch = 16)
lines(OK.upper$year, OK.upper$perc.political*100, col = "red")
points(OK.upper$year, OK.upper$perc.political*100, col = "red", pch = 16)
lines(OK.gov$year, OK.gov$perc.political*100, col = "darkgreen")
points(OK.gov$year, OK.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(OK.lower$year, OK.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "OK, Union")
points(OK.lower$year, OK.lower$perc.union*100, col = "blue", pch = 16)
lines(OK.upper$year, OK.upper$perc.union*100, col = "red")
points(OK.upper$year, OK.upper$perc.union*100, col = "red", pch = 16)
lines(OK.gov$year, OK.gov$perc.union*100, col = "darkgreen")
points(OK.gov$year, OK.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(OK.lower$year, OK.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "OK, Advocacy")
points(OK.lower$year, OK.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(OK.upper$year, OK.upper$perc.advocacy*100, col = "red")
points(OK.upper$year, OK.upper$perc.advocacy*100, col = "red", pch = 16)
lines(OK.gov$year, OK.gov$perc.advocacy*100, col = "darkgreen")
points(OK.gov$year, OK.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(OK.lower$year, OK.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "OK, Public")
points(OK.lower$year, OK.lower$perc.public*100, col = "blue", pch = 16)
lines(OK.upper$year, OK.upper$perc.public*100, col = "red")
points(OK.upper$year, OK.upper$perc.public*100, col = "red", pch = 16)
lines(OK.gov$year, OK.gov$perc.public*100, col = "darkgreen")
points(OK.gov$year, OK.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(OK.lower$year, OK.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "OK, Misc")
points(OK.lower$year, OK.lower$perc.misc*100, col = "blue", pch = 16)
lines(OK.upper$year, OK.upper$perc.misc*100, col = "red")
points(OK.upper$year, OK.upper$perc.misc*100, col = "red", pch = 16)
lines(OK.gov$year, OK.gov$perc.misc*100, col = "darkgreen")
points(OK.gov$year, OK.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

























par(mfrow=c(3, 6)) #Establish aesthetic parameters of the figure

plot(NM.lower$year, NM.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "NM, Business")
points(NM.lower$year, NM.lower$perc.business*100, col = "blue", pch = 16)
lines(NM.upper$year, NM.upper$perc.business*100, col = "red")
points(NM.upper$year, NM.upper$perc.business*100, col = "red", pch = 16)
lines(NM.gov$year, NM.gov$perc.business*100, col = "darkgreen")
points(NM.gov$year, NM.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(NM.lower$year, NM.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "NM, Political")
points(NM.lower$year, NM.lower$perc.political*100, col = "blue", pch = 16)
lines(NM.upper$year, NM.upper$perc.political*100, col = "red")
points(NM.upper$year, NM.upper$perc.political*100, col = "red", pch = 16)
lines(NM.gov$year, NM.gov$perc.political*100, col = "darkgreen")
points(NM.gov$year, NM.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NM.lower$year, NM.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "NM, Union")
points(NM.lower$year, NM.lower$perc.union*100, col = "blue", pch = 16)
lines(NM.upper$year, NM.upper$perc.union*100, col = "red")
points(NM.upper$year, NM.upper$perc.union*100, col = "red", pch = 16)
lines(NM.gov$year, NM.gov$perc.union*100, col = "darkgreen")
points(NM.gov$year, NM.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NM.lower$year, NM.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "NM, Advocacy")
points(NM.lower$year, NM.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(NM.upper$year, NM.upper$perc.advocacy*100, col = "red")
points(NM.upper$year, NM.upper$perc.advocacy*100, col = "red", pch = 16)
lines(NM.gov$year, NM.gov$perc.advocacy*100, col = "darkgreen")
points(NM.gov$year, NM.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NM.lower$year, NM.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "NM, Public")
points(NM.lower$year, NM.lower$perc.public*100, col = "blue", pch = 16)
lines(NM.upper$year, NM.upper$perc.public*100, col = "red")
points(NM.upper$year, NM.upper$perc.public*100, col = "red", pch = 16)
lines(NM.gov$year, NM.gov$perc.public*100, col = "darkgreen")
points(NM.gov$year, NM.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NM.lower$year, NM.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "NM, Misc")
points(NM.lower$year, NM.lower$perc.misc*100, col = "blue", pch = 16)
lines(NM.upper$year, NM.upper$perc.misc*100, col = "red")
points(NM.upper$year, NM.upper$perc.misc*100, col = "red", pch = 16)
lines(NM.gov$year, NM.gov$perc.misc*100, col = "darkgreen")
points(NM.gov$year, NM.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






plot(NY.lower$year, NY.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NY, Business")
points(NY.lower$year, NY.lower$perc.business*100, col = "blue", pch = 16)
lines(NY.upper$year, NY.upper$perc.business*100, col = "red")
points(NY.upper$year, NY.upper$perc.business*100, col = "red", pch = 16)
lines(NY.gov$year, NY.gov$perc.business*100, col = "darkgreen")
points(NY.gov$year, NY.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(NY.lower$year, NY.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NY, Political")
points(NY.lower$year, NY.lower$perc.political*100, col = "blue", pch = 16)
lines(NY.upper$year, NY.upper$perc.political*100, col = "red")
points(NY.upper$year, NY.upper$perc.political*100, col = "red", pch = 16)
lines(NY.gov$year, NY.gov$perc.political*100, col = "darkgreen")
points(NY.gov$year, NY.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NY.lower$year, NY.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NY, Union")
points(NY.lower$year, NY.lower$perc.union*100, col = "blue", pch = 16)
lines(NY.upper$year, NY.upper$perc.union*100, col = "red")
points(NY.upper$year, NY.upper$perc.union*100, col = "red", pch = 16)
lines(NY.gov$year, NY.gov$perc.union*100, col = "darkgreen")
points(NY.gov$year, NY.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NY.lower$year, NY.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NY, Advocacy")
points(NY.lower$year, NY.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(NY.upper$year, NY.upper$perc.advocacy*100, col = "red")
points(NY.upper$year, NY.upper$perc.advocacy*100, col = "red", pch = 16)
lines(NY.gov$year, NY.gov$perc.advocacy*100, col = "darkgreen")
points(NY.gov$year, NY.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NY.lower$year, NY.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NY, Public")
points(NY.lower$year, NY.lower$perc.public*100, col = "blue", pch = 16)
lines(NY.upper$year, NY.upper$perc.public*100, col = "red")
points(NY.upper$year, NY.upper$perc.public*100, col = "red", pch = 16)
lines(NY.gov$year, NY.gov$perc.public*100, col = "darkgreen")
points(NY.gov$year, NY.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NY.lower$year, NY.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NY, Misc")
points(NY.lower$year, NY.lower$perc.misc*100, col = "blue", pch = 16)
lines(NY.upper$year, NY.upper$perc.misc*100, col = "red")
points(NY.upper$year, NY.upper$perc.misc*100, col = "red", pch = 16)
lines(NY.gov$year, NY.gov$perc.misc*100, col = "darkgreen")
points(NY.gov$year, NY.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     







plot(NC.lower$year, NC.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NC, Business")
points(NC.lower$year, NC.lower$perc.business*100, col = "blue", pch = 16)
lines(NC.upper$year, NC.upper$perc.business*100, col = "red")
points(NC.upper$year, NC.upper$perc.business*100, col = "red", pch = 16)
lines(NC.gov$year, NC.gov$perc.business*100, col = "darkgreen")
points(NC.gov$year, NC.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(NC.lower$year, NC.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NC, Political")
points(NC.lower$year, NC.lower$perc.political*100, col = "blue", pch = 16)
lines(NC.upper$year, NC.upper$perc.political*100, col = "red")
points(NC.upper$year, NC.upper$perc.political*100, col = "red", pch = 16)
lines(NC.gov$year, NC.gov$perc.political*100, col = "darkgreen")
points(NC.gov$year, NC.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NC.lower$year, NC.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NC, Union")
points(NC.lower$year, NC.lower$perc.union*100, col = "blue", pch = 16)
lines(NC.upper$year, NC.upper$perc.union*100, col = "red")
points(NC.upper$year, NC.upper$perc.union*100, col = "red", pch = 16)
lines(NC.gov$year, NC.gov$perc.union*100, col = "darkgreen")
points(NC.gov$year, NC.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NC.lower$year, NC.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NC, Advocacy")
points(NC.lower$year, NC.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(NC.upper$year, NC.upper$perc.advocacy*100, col = "red")
points(NC.upper$year, NC.upper$perc.advocacy*100, col = "red", pch = 16)
lines(NC.gov$year, NC.gov$perc.advocacy*100, col = "darkgreen")
points(NC.gov$year, NC.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NC.lower$year, NC.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NC, Public")
points(NC.lower$year, NC.lower$perc.public*100, col = "blue", pch = 16)
lines(NC.upper$year, NC.upper$perc.public*100, col = "red")
points(NC.upper$year, NC.upper$perc.public*100, col = "red", pch = 16)
lines(NC.gov$year, NC.gov$perc.public*100, col = "darkgreen")
points(NC.gov$year, NC.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NC.lower$year, NC.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NC, Misc")
points(NC.lower$year, NC.lower$perc.misc*100, col = "blue", pch = 16)
lines(NC.upper$year, NC.upper$perc.misc*100, col = "red")
points(NC.upper$year, NC.upper$perc.misc*100, col = "red", pch = 16)
lines(NC.gov$year, NC.gov$perc.misc*100, col = "darkgreen")
points(NC.gov$year, NC.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

























par(mfrow=c(3, 6)) #Establish aesthetic parameters of the figure

plot(NV.lower$year, NV.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 100), xlab = "Year", ylab = "Percent", main = "NV, Business")
points(NV.lower$year, NV.lower$perc.business*100, col = "blue", pch = 16)
lines(NV.upper$year, NV.upper$perc.business*100, col = "red")
points(NV.upper$year, NV.upper$perc.business*100, col = "red", pch = 16)
lines(NV.gov$year, NV.gov$perc.business*100, col = "darkgreen")
points(NV.gov$year, NV.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(NV.lower$year, NV.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 100), xlab = "Year", ylab = "Percent", main = "NV, Political")
points(NV.lower$year, NV.lower$perc.political*100, col = "blue", pch = 16)
lines(NV.upper$year, NV.upper$perc.political*100, col = "red")
points(NV.upper$year, NV.upper$perc.political*100, col = "red", pch = 16)
lines(NV.gov$year, NV.gov$perc.political*100, col = "darkgreen")
points(NV.gov$year, NV.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NV.lower$year, NV.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 100), xlab = "Year", ylab = "Percent", main = "NV, Union")
points(NV.lower$year, NV.lower$perc.union*100, col = "blue", pch = 16)
lines(NV.upper$year, NV.upper$perc.union*100, col = "red")
points(NV.upper$year, NV.upper$perc.union*100, col = "red", pch = 16)
lines(NV.gov$year, NV.gov$perc.union*100, col = "darkgreen")
points(NV.gov$year, NV.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NV.lower$year, NV.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 100), xlab = "Year", ylab = "Percent", main = "NV, Advocacy")
points(NV.lower$year, NV.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(NV.upper$year, NV.upper$perc.advocacy*100, col = "red")
points(NV.upper$year, NV.upper$perc.advocacy*100, col = "red", pch = 16)
lines(NV.gov$year, NV.gov$perc.advocacy*100, col = "darkgreen")
points(NV.gov$year, NV.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NV.lower$year, NV.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 100), xlab = "Year", ylab = "Percent", main = "NV, Public")
points(NV.lower$year, NV.lower$perc.public*100, col = "blue", pch = 16)
lines(NV.upper$year, NV.upper$perc.public*100, col = "red")
points(NV.upper$year, NV.upper$perc.public*100, col = "red", pch = 16)
lines(NV.gov$year, NV.gov$perc.public*100, col = "darkgreen")
points(NV.gov$year, NV.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NV.lower$year, NV.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 100), xlab = "Year", ylab = "Percent", main = "NV, Misc")
points(NV.lower$year, NV.lower$perc.misc*100, col = "blue", pch = 16)
lines(NV.upper$year, NV.upper$perc.misc*100, col = "red")
points(NV.upper$year, NV.upper$perc.misc*100, col = "red", pch = 16)
lines(NV.gov$year, NV.gov$perc.misc*100, col = "darkgreen")
points(NV.gov$year, NV.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






plot(NH.lower$year, NH.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NH, Business")
points(NH.lower$year, NH.lower$perc.business*100, col = "blue", pch = 16)
lines(NH.upper$year, NH.upper$perc.business*100, col = "red")
points(NH.upper$year, NH.upper$perc.business*100, col = "red", pch = 16)
lines(NH.gov$year, NH.gov$perc.business*100, col = "darkgreen")
points(NH.gov$year, NH.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(NH.lower$year, NH.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NH, Political")
points(NH.lower$year, NH.lower$perc.political*100, col = "blue", pch = 16)
lines(NH.upper$year, NH.upper$perc.political*100, col = "red")
points(NH.upper$year, NH.upper$perc.political*100, col = "red", pch = 16)
lines(NH.gov$year, NH.gov$perc.political*100, col = "darkgreen")
points(NH.gov$year, NH.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NH.lower$year, NH.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NH, Union")
points(NH.lower$year, NH.lower$perc.union*100, col = "blue", pch = 16)
lines(NH.upper$year, NH.upper$perc.union*100, col = "red")
points(NH.upper$year, NH.upper$perc.union*100, col = "red", pch = 16)
lines(NH.gov$year, NH.gov$perc.union*100, col = "darkgreen")
points(NH.gov$year, NH.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NH.lower$year, NH.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NH, Advocacy")
points(NH.lower$year, NH.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(NH.upper$year, NH.upper$perc.advocacy*100, col = "red")
points(NH.upper$year, NH.upper$perc.advocacy*100, col = "red", pch = 16)
lines(NH.gov$year, NH.gov$perc.advocacy*100, col = "darkgreen")
points(NH.gov$year, NH.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NH.lower$year, NH.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NH, Public")
points(NH.lower$year, NH.lower$perc.public*100, col = "blue", pch = 16)
lines(NH.upper$year, NH.upper$perc.public*100, col = "red")
points(NH.upper$year, NH.upper$perc.public*100, col = "red", pch = 16)
lines(NH.gov$year, NH.gov$perc.public*100, col = "darkgreen")
points(NH.gov$year, NH.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NH.lower$year, NH.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "NH, Misc")
points(NH.lower$year, NH.lower$perc.misc*100, col = "blue", pch = 16)
lines(NH.upper$year, NH.upper$perc.misc*100, col = "red")
points(NH.upper$year, NH.upper$perc.misc*100, col = "red", pch = 16)
lines(NH.gov$year, NH.gov$perc.misc*100, col = "darkgreen")
points(NH.gov$year, NH.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     







plot(NJ.lower$year, NJ.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "NJ, Business")
points(NJ.lower$year, NJ.lower$perc.business*100, col = "blue", pch = 16)
lines(NJ.upper$year, NJ.upper$perc.business*100, col = "red")
points(NJ.upper$year, NJ.upper$perc.business*100, col = "red", pch = 16)
lines(NJ.gov$year, NJ.gov$perc.business*100, col = "darkgreen")
points(NJ.gov$year, NJ.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(NJ.lower$year, NJ.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "NJ, Political")
points(NJ.lower$year, NJ.lower$perc.political*100, col = "blue", pch = 16)
lines(NJ.upper$year, NJ.upper$perc.political*100, col = "red")
points(NJ.upper$year, NJ.upper$perc.political*100, col = "red", pch = 16)
lines(NJ.gov$year, NJ.gov$perc.political*100, col = "darkgreen")
points(NJ.gov$year, NJ.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NJ.lower$year, NJ.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "NJ, Union")
points(NJ.lower$year, NJ.lower$perc.union*100, col = "blue", pch = 16)
lines(NJ.upper$year, NJ.upper$perc.union*100, col = "red")
points(NJ.upper$year, NJ.upper$perc.union*100, col = "red", pch = 16)
lines(NJ.gov$year, NJ.gov$perc.union*100, col = "darkgreen")
points(NJ.gov$year, NJ.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NJ.lower$year, NJ.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "NJ, Advocacy")
points(NJ.lower$year, NJ.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(NJ.upper$year, NJ.upper$perc.advocacy*100, col = "red")
points(NJ.upper$year, NJ.upper$perc.advocacy*100, col = "red", pch = 16)
lines(NJ.gov$year, NJ.gov$perc.advocacy*100, col = "darkgreen")
points(NJ.gov$year, NJ.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NJ.lower$year, NJ.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "NJ, Public")
points(NJ.lower$year, NJ.lower$perc.public*100, col = "blue", pch = 16)
lines(NJ.upper$year, NJ.upper$perc.public*100, col = "red")
points(NJ.upper$year, NJ.upper$perc.public*100, col = "red", pch = 16)
lines(NJ.gov$year, NJ.gov$perc.public*100, col = "darkgreen")
points(NJ.gov$year, NJ.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(NJ.lower$year, NJ.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 60), xlab = "Year", ylab = "Percent", main = "NJ, Misc")
points(NJ.lower$year, NJ.lower$perc.misc*100, col = "blue", pch = 16)
lines(NJ.upper$year, NJ.upper$perc.misc*100, col = "red")
points(NJ.upper$year, NJ.upper$perc.misc*100, col = "red", pch = 16)
lines(NJ.gov$year, NJ.gov$perc.misc*100, col = "darkgreen")
points(NJ.gov$year, NJ.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

























par(mfrow=c(3, 6)) #Establish aesthetic parameters of the figure

plot(OR.lower$year, OR.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 75), xlab = "Year", ylab = "Percent", main = "OR, Business")
points(OR.lower$year, OR.lower$perc.business*100, col = "blue", pch = 16)
lines(OR.upper$year, OR.upper$perc.business*100, col = "red")
points(OR.upper$year, OR.upper$perc.business*100, col = "red", pch = 16)
lines(OR.gov$year, OR.gov$perc.business*100, col = "darkgreen")
points(OR.gov$year, OR.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(OR.lower$year, OR.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 75), xlab = "Year", ylab = "Percent", main = "OR, Political")
points(OR.lower$year, OR.lower$perc.political*100, col = "blue", pch = 16)
lines(OR.upper$year, OR.upper$perc.political*100, col = "red")
points(OR.upper$year, OR.upper$perc.political*100, col = "red", pch = 16)
lines(OR.gov$year, OR.gov$perc.political*100, col = "darkgreen")
points(OR.gov$year, OR.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(OR.lower$year, OR.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 75), xlab = "Year", ylab = "Percent", main = "OR, Union")
points(OR.lower$year, OR.lower$perc.union*100, col = "blue", pch = 16)
lines(OR.upper$year, OR.upper$perc.union*100, col = "red")
points(OR.upper$year, OR.upper$perc.union*100, col = "red", pch = 16)
lines(OR.gov$year, OR.gov$perc.union*100, col = "darkgreen")
points(OR.gov$year, OR.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(OR.lower$year, OR.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 75), xlab = "Year", ylab = "Percent", main = "OR, Advocacy")
points(OR.lower$year, OR.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(OR.upper$year, OR.upper$perc.advocacy*100, col = "red")
points(OR.upper$year, OR.upper$perc.advocacy*100, col = "red", pch = 16)
lines(OR.gov$year, OR.gov$perc.advocacy*100, col = "darkgreen")
points(OR.gov$year, OR.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(OR.lower$year, OR.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 75), xlab = "Year", ylab = "Percent", main = "OR, Public")
points(OR.lower$year, OR.lower$perc.public*100, col = "blue", pch = 16)
lines(OR.upper$year, OR.upper$perc.public*100, col = "red")
points(OR.upper$year, OR.upper$perc.public*100, col = "red", pch = 16)
lines(OR.gov$year, OR.gov$perc.public*100, col = "darkgreen")
points(OR.gov$year, OR.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(OR.lower$year, OR.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 75), xlab = "Year", ylab = "Percent", main = "OR, Misc")
points(OR.lower$year, OR.lower$perc.misc*100, col = "blue", pch = 16)
lines(OR.upper$year, OR.upper$perc.misc*100, col = "red")
points(OR.upper$year, OR.upper$perc.misc*100, col = "red", pch = 16)
lines(OR.gov$year, OR.gov$perc.misc*100, col = "darkgreen")
points(OR.gov$year, OR.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






plot(PA.lower$year, PA.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "PA, Business")
points(PA.lower$year, PA.lower$perc.business*100, col = "blue", pch = 16)
lines(PA.upper$year, PA.upper$perc.business*100, col = "red")
points(PA.upper$year, PA.upper$perc.business*100, col = "red", pch = 16)
lines(PA.gov$year, PA.gov$perc.business*100, col = "darkgreen")
points(PA.gov$year, PA.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(PA.lower$year, PA.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "PA, Political")
points(PA.lower$year, PA.lower$perc.political*100, col = "blue", pch = 16)
lines(PA.upper$year, PA.upper$perc.political*100, col = "red")
points(PA.upper$year, PA.upper$perc.political*100, col = "red", pch = 16)
lines(PA.gov$year, PA.gov$perc.political*100, col = "darkgreen")
points(PA.gov$year, PA.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(PA.lower$year, PA.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "PA, Union")
points(PA.lower$year, PA.lower$perc.union*100, col = "blue", pch = 16)
lines(PA.upper$year, PA.upper$perc.union*100, col = "red")
points(PA.upper$year, PA.upper$perc.union*100, col = "red", pch = 16)
lines(PA.gov$year, PA.gov$perc.union*100, col = "darkgreen")
points(PA.gov$year, PA.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(PA.lower$year, PA.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "PA, Advocacy")
points(PA.lower$year, PA.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(PA.upper$year, PA.upper$perc.advocacy*100, col = "red")
points(PA.upper$year, PA.upper$perc.advocacy*100, col = "red", pch = 16)
lines(PA.gov$year, PA.gov$perc.advocacy*100, col = "darkgreen")
points(PA.gov$year, PA.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(PA.lower$year, PA.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "PA, Public")
points(PA.lower$year, PA.lower$perc.public*100, col = "blue", pch = 16)
lines(PA.upper$year, PA.upper$perc.public*100, col = "red")
points(PA.upper$year, PA.upper$perc.public*100, col = "red", pch = 16)
lines(PA.gov$year, PA.gov$perc.public*100, col = "darkgreen")
points(PA.gov$year, PA.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(PA.lower$year, PA.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "PA, Misc")
points(PA.lower$year, PA.lower$perc.misc*100, col = "blue", pch = 16)
lines(PA.upper$year, PA.upper$perc.misc*100, col = "red")
points(PA.upper$year, PA.upper$perc.misc*100, col = "red", pch = 16)
lines(PA.gov$year, PA.gov$perc.misc*100, col = "darkgreen")
points(PA.gov$year, PA.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     







plot(RI.lower$year, RI.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "RI, Business")
points(RI.lower$year, RI.lower$perc.business*100, col = "blue", pch = 16)
lines(RI.upper$year, RI.upper$perc.business*100, col = "red")
points(RI.upper$year, RI.upper$perc.business*100, col = "red", pch = 16)
lines(RI.gov$year, RI.gov$perc.business*100, col = "darkgreen")
points(RI.gov$year, RI.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(RI.lower$year, RI.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "RI, Political")
points(RI.lower$year, RI.lower$perc.political*100, col = "blue", pch = 16)
lines(RI.upper$year, RI.upper$perc.political*100, col = "red")
points(RI.upper$year, RI.upper$perc.political*100, col = "red", pch = 16)
lines(RI.gov$year, RI.gov$perc.political*100, col = "darkgreen")
points(RI.gov$year, RI.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(RI.lower$year, RI.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "RI, Union")
points(RI.lower$year, RI.lower$perc.union*100, col = "blue", pch = 16)
lines(RI.upper$year, RI.upper$perc.union*100, col = "red")
points(RI.upper$year, RI.upper$perc.union*100, col = "red", pch = 16)
lines(RI.gov$year, RI.gov$perc.union*100, col = "darkgreen")
points(RI.gov$year, RI.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(RI.lower$year, RI.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "RI, Advocacy")
points(RI.lower$year, RI.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(RI.upper$year, RI.upper$perc.advocacy*100, col = "red")
points(RI.upper$year, RI.upper$perc.advocacy*100, col = "red", pch = 16)
lines(RI.gov$year, RI.gov$perc.advocacy*100, col = "darkgreen")
points(RI.gov$year, RI.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(RI.lower$year, RI.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "RI, Public")
points(RI.lower$year, RI.lower$perc.public*100, col = "blue", pch = 16)
lines(RI.upper$year, RI.upper$perc.public*100, col = "red")
points(RI.upper$year, RI.upper$perc.public*100, col = "red", pch = 16)
lines(RI.gov$year, RI.gov$perc.public*100, col = "darkgreen")
points(RI.gov$year, RI.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(RI.lower$year, RI.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "RI, Misc")
points(RI.lower$year, RI.lower$perc.misc*100, col = "blue", pch = 16)
lines(RI.upper$year, RI.upper$perc.misc*100, col = "red")
points(RI.upper$year, RI.upper$perc.misc*100, col = "red", pch = 16)
lines(RI.gov$year, RI.gov$perc.misc*100, col = "darkgreen")
points(RI.gov$year, RI.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

























par(mfrow=c(3, 6)) #Establish aesthetic parameters of the figure

plot(SC.lower$year, SC.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "SC, Business")
points(SC.lower$year, SC.lower$perc.business*100, col = "blue", pch = 16)
lines(SC.upper$year, SC.upper$perc.business*100, col = "red")
points(SC.upper$year, SC.upper$perc.business*100, col = "red", pch = 16)
lines(SC.gov$year, SC.gov$perc.business*100, col = "darkgreen")
points(SC.gov$year, SC.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(SC.lower$year, SC.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "SC, Political")
points(SC.lower$year, SC.lower$perc.political*100, col = "blue", pch = 16)
lines(SC.upper$year, SC.upper$perc.political*100, col = "red")
points(SC.upper$year, SC.upper$perc.political*100, col = "red", pch = 16)
lines(SC.gov$year, SC.gov$perc.political*100, col = "darkgreen")
points(SC.gov$year, SC.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(SC.lower$year, SC.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "SC, Union")
points(SC.lower$year, SC.lower$perc.union*100, col = "blue", pch = 16)
lines(SC.upper$year, SC.upper$perc.union*100, col = "red")
points(SC.upper$year, SC.upper$perc.union*100, col = "red", pch = 16)
lines(SC.gov$year, SC.gov$perc.union*100, col = "darkgreen")
points(SC.gov$year, SC.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(SC.lower$year, SC.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "SC, Advocacy")
points(SC.lower$year, SC.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(SC.upper$year, SC.upper$perc.advocacy*100, col = "red")
points(SC.upper$year, SC.upper$perc.advocacy*100, col = "red", pch = 16)
lines(SC.gov$year, SC.gov$perc.advocacy*100, col = "darkgreen")
points(SC.gov$year, SC.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(SC.lower$year, SC.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "SC, Public")
points(SC.lower$year, SC.lower$perc.public*100, col = "blue", pch = 16)
lines(SC.upper$year, SC.upper$perc.public*100, col = "red")
points(SC.upper$year, SC.upper$perc.public*100, col = "red", pch = 16)
lines(SC.gov$year, SC.gov$perc.public*100, col = "darkgreen")
points(SC.gov$year, SC.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(SC.lower$year, SC.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "SC, Misc")
points(SC.lower$year, SC.lower$perc.misc*100, col = "blue", pch = 16)
lines(SC.upper$year, SC.upper$perc.misc*100, col = "red")
points(SC.upper$year, SC.upper$perc.misc*100, col = "red", pch = 16)
lines(SC.gov$year, SC.gov$perc.misc*100, col = "darkgreen")
points(SC.gov$year, SC.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






plot(SD.lower$year, SD.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "SD, Business")
points(SD.lower$year, SD.lower$perc.business*100, col = "blue", pch = 16)
lines(SD.upper$year, SD.upper$perc.business*100, col = "red")
points(SD.upper$year, SD.upper$perc.business*100, col = "red", pch = 16)
lines(SD.gov$year, SD.gov$perc.business*100, col = "darkgreen")
points(SD.gov$year, SD.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(SD.lower$year, SD.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "SD, Political")
points(SD.lower$year, SD.lower$perc.political*100, col = "blue", pch = 16)
lines(SD.upper$year, SD.upper$perc.political*100, col = "red")
points(SD.upper$year, SD.upper$perc.political*100, col = "red", pch = 16)
lines(SD.gov$year, SD.gov$perc.political*100, col = "darkgreen")
points(SD.gov$year, SD.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(SD.lower$year, SD.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "SD, Union")
points(SD.lower$year, SD.lower$perc.union*100, col = "blue", pch = 16)
lines(SD.upper$year, SD.upper$perc.union*100, col = "red")
points(SD.upper$year, SD.upper$perc.union*100, col = "red", pch = 16)
lines(SD.gov$year, SD.gov$perc.union*100, col = "darkgreen")
points(SD.gov$year, SD.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(SD.lower$year, SD.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "SD, Advocacy")
points(SD.lower$year, SD.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(SD.upper$year, SD.upper$perc.advocacy*100, col = "red")
points(SD.upper$year, SD.upper$perc.advocacy*100, col = "red", pch = 16)
lines(SD.gov$year, SD.gov$perc.advocacy*100, col = "darkgreen")
points(SD.gov$year, SD.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(SD.lower$year, SD.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "SD, Public")
points(SD.lower$year, SD.lower$perc.public*100, col = "blue", pch = 16)
lines(SD.upper$year, SD.upper$perc.public*100, col = "red")
points(SD.upper$year, SD.upper$perc.public*100, col = "red", pch = 16)
lines(SD.gov$year, SD.gov$perc.public*100, col = "darkgreen")
points(SD.gov$year, SD.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(SD.lower$year, SD.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "SD, Misc")
points(SD.lower$year, SD.lower$perc.misc*100, col = "blue", pch = 16)
lines(SD.upper$year, SD.upper$perc.misc*100, col = "red")
points(SD.upper$year, SD.upper$perc.misc*100, col = "red", pch = 16)
lines(SD.gov$year, SD.gov$perc.misc*100, col = "darkgreen")
points(SD.gov$year, SD.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     







plot(TN.lower$year, TN.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "TN, Business")
points(TN.lower$year, TN.lower$perc.business*100, col = "blue", pch = 16)
lines(TN.upper$year, TN.upper$perc.business*100, col = "red")
points(TN.upper$year, TN.upper$perc.business*100, col = "red", pch = 16)
lines(TN.gov$year, TN.gov$perc.business*100, col = "darkgreen")
points(TN.gov$year, TN.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(TN.lower$year, TN.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "TN, Political")
points(TN.lower$year, TN.lower$perc.political*100, col = "blue", pch = 16)
lines(TN.upper$year, TN.upper$perc.political*100, col = "red")
points(TN.upper$year, TN.upper$perc.political*100, col = "red", pch = 16)
lines(TN.gov$year, TN.gov$perc.political*100, col = "darkgreen")
points(TN.gov$year, TN.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(TN.lower$year, TN.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "TN, Union")
points(TN.lower$year, TN.lower$perc.union*100, col = "blue", pch = 16)
lines(TN.upper$year, TN.upper$perc.union*100, col = "red")
points(TN.upper$year, TN.upper$perc.union*100, col = "red", pch = 16)
lines(TN.gov$year, TN.gov$perc.union*100, col = "darkgreen")
points(TN.gov$year, TN.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(TN.lower$year, TN.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "TN, Advocacy")
points(TN.lower$year, TN.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(TN.upper$year, TN.upper$perc.advocacy*100, col = "red")
points(TN.upper$year, TN.upper$perc.advocacy*100, col = "red", pch = 16)
lines(TN.gov$year, TN.gov$perc.advocacy*100, col = "darkgreen")
points(TN.gov$year, TN.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(TN.lower$year, TN.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "TN, Public")
points(TN.lower$year, TN.lower$perc.public*100, col = "blue", pch = 16)
lines(TN.upper$year, TN.upper$perc.public*100, col = "red")
points(TN.upper$year, TN.upper$perc.public*100, col = "red", pch = 16)
lines(TN.gov$year, TN.gov$perc.public*100, col = "darkgreen")
points(TN.gov$year, TN.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(TN.lower$year, TN.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "TN, Misc")
points(TN.lower$year, TN.lower$perc.misc*100, col = "blue", pch = 16)
lines(TN.upper$year, TN.upper$perc.misc*100, col = "red")
points(TN.upper$year, TN.upper$perc.misc*100, col = "red", pch = 16)
lines(TN.gov$year, TN.gov$perc.misc*100, col = "darkgreen")
points(TN.gov$year, TN.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

























par(mfrow=c(3, 6)) #Establish aesthetic parameters of the figure

plot(TX.lower$year, TX.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 80), xlab = "Year", ylab = "Percent", main = "TX, Business")
points(TX.lower$year, TX.lower$perc.business*100, col = "blue", pch = 16)
lines(TX.upper$year, TX.upper$perc.business*100, col = "red")
points(TX.upper$year, TX.upper$perc.business*100, col = "red", pch = 16)
lines(TX.gov$year, TX.gov$perc.business*100, col = "darkgreen")
points(TX.gov$year, TX.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(TX.lower$year, TX.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 80), xlab = "Year", ylab = "Percent", main = "TX, Political")
points(TX.lower$year, TX.lower$perc.political*100, col = "blue", pch = 16)
lines(TX.upper$year, TX.upper$perc.political*100, col = "red")
points(TX.upper$year, TX.upper$perc.political*100, col = "red", pch = 16)
lines(TX.gov$year, TX.gov$perc.political*100, col = "darkgreen")
points(TX.gov$year, TX.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(TX.lower$year, TX.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 80), xlab = "Year", ylab = "Percent", main = "TX, Union")
points(TX.lower$year, TX.lower$perc.union*100, col = "blue", pch = 16)
lines(TX.upper$year, TX.upper$perc.union*100, col = "red")
points(TX.upper$year, TX.upper$perc.union*100, col = "red", pch = 16)
lines(TX.gov$year, TX.gov$perc.union*100, col = "darkgreen")
points(TX.gov$year, TX.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(TX.lower$year, TX.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 80), xlab = "Year", ylab = "Percent", main = "TX, Advocacy")
points(TX.lower$year, TX.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(TX.upper$year, TX.upper$perc.advocacy*100, col = "red")
points(TX.upper$year, TX.upper$perc.advocacy*100, col = "red", pch = 16)
lines(TX.gov$year, TX.gov$perc.advocacy*100, col = "darkgreen")
points(TX.gov$year, TX.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(TX.lower$year, TX.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 80), xlab = "Year", ylab = "Percent", main = "TX, Public")
points(TX.lower$year, TX.lower$perc.public*100, col = "blue", pch = 16)
lines(TX.upper$year, TX.upper$perc.public*100, col = "red")
points(TX.upper$year, TX.upper$perc.public*100, col = "red", pch = 16)
lines(TX.gov$year, TX.gov$perc.public*100, col = "darkgreen")
points(TX.gov$year, TX.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(TX.lower$year, TX.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 80), xlab = "Year", ylab = "Percent", main = "TX, Misc")
points(TX.lower$year, TX.lower$perc.misc*100, col = "blue", pch = 16)
lines(TX.upper$year, TX.upper$perc.misc*100, col = "red")
points(TX.upper$year, TX.upper$perc.misc*100, col = "red", pch = 16)
lines(TX.gov$year, TX.gov$perc.misc*100, col = "darkgreen")
points(TX.gov$year, TX.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






plot(UT.lower$year, UT.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 80), xlab = "Year", ylab = "Percent", main = "UT, Business")
points(UT.lower$year, UT.lower$perc.business*100, col = "blue", pch = 16)
lines(UT.upper$year, UT.upper$perc.business*100, col = "red")
points(UT.upper$year, UT.upper$perc.business*100, col = "red", pch = 16)
lines(UT.gov$year, UT.gov$perc.business*100, col = "darkgreen")
points(UT.gov$year, UT.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(UT.lower$year, UT.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 80), xlab = "Year", ylab = "Percent", main = "UT, Political")
points(UT.lower$year, UT.lower$perc.political*100, col = "blue", pch = 16)
lines(UT.upper$year, UT.upper$perc.political*100, col = "red")
points(UT.upper$year, UT.upper$perc.political*100, col = "red", pch = 16)
lines(UT.gov$year, UT.gov$perc.political*100, col = "darkgreen")
points(UT.gov$year, UT.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(UT.lower$year, UT.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 80), xlab = "Year", ylab = "Percent", main = "UT, Union")
points(UT.lower$year, UT.lower$perc.union*100, col = "blue", pch = 16)
lines(UT.upper$year, UT.upper$perc.union*100, col = "red")
points(UT.upper$year, UT.upper$perc.union*100, col = "red", pch = 16)
lines(UT.gov$year, UT.gov$perc.union*100, col = "darkgreen")
points(UT.gov$year, UT.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(UT.lower$year, UT.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 80), xlab = "Year", ylab = "Percent", main = "UT, Advocacy")
points(UT.lower$year, UT.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(UT.upper$year, UT.upper$perc.advocacy*100, col = "red")
points(UT.upper$year, UT.upper$perc.advocacy*100, col = "red", pch = 16)
lines(UT.gov$year, UT.gov$perc.advocacy*100, col = "darkgreen")
points(UT.gov$year, UT.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(UT.lower$year, UT.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 80), xlab = "Year", ylab = "Percent", main = "UT, Public")
points(UT.lower$year, UT.lower$perc.public*100, col = "blue", pch = 16)
lines(UT.upper$year, UT.upper$perc.public*100, col = "red")
points(UT.upper$year, UT.upper$perc.public*100, col = "red", pch = 16)
lines(UT.gov$year, UT.gov$perc.public*100, col = "darkgreen")
points(UT.gov$year, UT.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(UT.lower$year, UT.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 80), xlab = "Year", ylab = "Percent", main = "UT, Misc")
points(UT.lower$year, UT.lower$perc.misc*100, col = "blue", pch = 16)
lines(UT.upper$year, UT.upper$perc.misc*100, col = "red")
points(UT.upper$year, UT.upper$perc.misc*100, col = "red", pch = 16)
lines(UT.gov$year, UT.gov$perc.misc*100, col = "darkgreen")
points(UT.gov$year, UT.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     







plot(VT.lower$year, VT.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "VT, Business")
points(VT.lower$year, VT.lower$perc.business*100, col = "blue", pch = 16)
lines(VT.upper$year, VT.upper$perc.business*100, col = "red")
points(VT.upper$year, VT.upper$perc.business*100, col = "red", pch = 16)
lines(VT.gov$year, VT.gov$perc.business*100, col = "darkgreen")
points(VT.gov$year, VT.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(VT.lower$year, VT.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "VT, Political")
points(VT.lower$year, VT.lower$perc.political*100, col = "blue", pch = 16)
lines(VT.upper$year, VT.upper$perc.political*100, col = "red")
points(VT.upper$year, VT.upper$perc.political*100, col = "red", pch = 16)
lines(VT.gov$year, VT.gov$perc.political*100, col = "darkgreen")
points(VT.gov$year, VT.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(VT.lower$year, VT.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "VT, Union")
points(VT.lower$year, VT.lower$perc.union*100, col = "blue", pch = 16)
lines(VT.upper$year, VT.upper$perc.union*100, col = "red")
points(VT.upper$year, VT.upper$perc.union*100, col = "red", pch = 16)
lines(VT.gov$year, VT.gov$perc.union*100, col = "darkgreen")
points(VT.gov$year, VT.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(VT.lower$year, VT.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "VT, Advocacy")
points(VT.lower$year, VT.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(VT.upper$year, VT.upper$perc.advocacy*100, col = "red")
points(VT.upper$year, VT.upper$perc.advocacy*100, col = "red", pch = 16)
lines(VT.gov$year, VT.gov$perc.advocacy*100, col = "darkgreen")
points(VT.gov$year, VT.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(VT.lower$year, VT.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "VT, Public")
points(VT.lower$year, VT.lower$perc.public*100, col = "blue", pch = 16)
lines(VT.upper$year, VT.upper$perc.public*100, col = "red")
points(VT.upper$year, VT.upper$perc.public*100, col = "red", pch = 16)
lines(VT.gov$year, VT.gov$perc.public*100, col = "darkgreen")
points(VT.gov$year, VT.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(VT.lower$year, VT.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "VT, Misc")
points(VT.lower$year, VT.lower$perc.misc*100, col = "blue", pch = 16)
lines(VT.upper$year, VT.upper$perc.misc*100, col = "red")
points(VT.upper$year, VT.upper$perc.misc*100, col = "red", pch = 16)
lines(VT.gov$year, VT.gov$perc.misc*100, col = "darkgreen")
points(VT.gov$year, VT.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     























par(mfrow=c(3, 6)) #Establish aesthetic parameters of the figure

plot(VA.lower$year, VA.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "VA, Business")
points(VA.lower$year, VA.lower$perc.business*100, col = "blue", pch = 16)
lines(VA.upper$year, VA.upper$perc.business*100, col = "red")
points(VA.upper$year, VA.upper$perc.business*100, col = "red", pch = 16)
lines(VA.gov$year, VA.gov$perc.business*100, col = "darkgreen")
points(VA.gov$year, VA.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(VA.lower$year, VA.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "VA, Political")
points(VA.lower$year, VA.lower$perc.political*100, col = "blue", pch = 16)
lines(VA.upper$year, VA.upper$perc.political*100, col = "red")
points(VA.upper$year, VA.upper$perc.political*100, col = "red", pch = 16)
lines(VA.gov$year, VA.gov$perc.political*100, col = "darkgreen")
points(VA.gov$year, VA.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(VA.lower$year, VA.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "VA, Union")
points(VA.lower$year, VA.lower$perc.union*100, col = "blue", pch = 16)
lines(VA.upper$year, VA.upper$perc.union*100, col = "red")
points(VA.upper$year, VA.upper$perc.union*100, col = "red", pch = 16)
lines(VA.gov$year, VA.gov$perc.union*100, col = "darkgreen")
points(VA.gov$year, VA.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(VA.lower$year, VA.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "VA, Advocacy")
points(VA.lower$year, VA.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(VA.upper$year, VA.upper$perc.advocacy*100, col = "red")
points(VA.upper$year, VA.upper$perc.advocacy*100, col = "red", pch = 16)
lines(VA.gov$year, VA.gov$perc.advocacy*100, col = "darkgreen")
points(VA.gov$year, VA.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(VA.lower$year, VA.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "VA, Public")
points(VA.lower$year, VA.lower$perc.public*100, col = "blue", pch = 16)
lines(VA.upper$year, VA.upper$perc.public*100, col = "red")
points(VA.upper$year, VA.upper$perc.public*100, col = "red", pch = 16)
lines(VA.gov$year, VA.gov$perc.public*100, col = "darkgreen")
points(VA.gov$year, VA.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(VA.lower$year, VA.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "VA, Misc")
points(VA.lower$year, VA.lower$perc.misc*100, col = "blue", pch = 16)
lines(VA.upper$year, VA.upper$perc.misc*100, col = "red")
points(VA.upper$year, VA.upper$perc.misc*100, col = "red", pch = 16)
lines(VA.gov$year, VA.gov$perc.misc*100, col = "darkgreen")
points(VA.gov$year, VA.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






plot(WA.lower$year, WA.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "WA, Business")
points(WA.lower$year, WA.lower$perc.business*100, col = "blue", pch = 16)
lines(WA.upper$year, WA.upper$perc.business*100, col = "red")
points(WA.upper$year, WA.upper$perc.business*100, col = "red", pch = 16)
lines(WA.gov$year, WA.gov$perc.business*100, col = "darkgreen")
points(WA.gov$year, WA.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(WA.lower$year, WA.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "WA, Political")
points(WA.lower$year, WA.lower$perc.political*100, col = "blue", pch = 16)
lines(WA.upper$year, WA.upper$perc.political*100, col = "red")
points(WA.upper$year, WA.upper$perc.political*100, col = "red", pch = 16)
lines(WA.gov$year, WA.gov$perc.political*100, col = "darkgreen")
points(WA.gov$year, WA.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(WA.lower$year, WA.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "WA, Union")
points(WA.lower$year, WA.lower$perc.union*100, col = "blue", pch = 16)
lines(WA.upper$year, WA.upper$perc.union*100, col = "red")
points(WA.upper$year, WA.upper$perc.union*100, col = "red", pch = 16)
lines(WA.gov$year, WA.gov$perc.union*100, col = "darkgreen")
points(WA.gov$year, WA.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(WA.lower$year, WA.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "WA, Advocacy")
points(WA.lower$year, WA.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(WA.upper$year, WA.upper$perc.advocacy*100, col = "red")
points(WA.upper$year, WA.upper$perc.advocacy*100, col = "red", pch = 16)
lines(WA.gov$year, WA.gov$perc.advocacy*100, col = "darkgreen")
points(WA.gov$year, WA.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(WA.lower$year, WA.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "WA, Public")
points(WA.lower$year, WA.lower$perc.public*100, col = "blue", pch = 16)
lines(WA.upper$year, WA.upper$perc.public*100, col = "red")
points(WA.upper$year, WA.upper$perc.public*100, col = "red", pch = 16)
lines(WA.gov$year, WA.gov$perc.public*100, col = "darkgreen")
points(WA.gov$year, WA.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(WA.lower$year, WA.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 70), xlab = "Year", ylab = "Percent", main = "WA, Misc")
points(WA.lower$year, WA.lower$perc.misc*100, col = "blue", pch = 16)
lines(WA.upper$year, WA.upper$perc.misc*100, col = "red")
points(WA.upper$year, WA.upper$perc.misc*100, col = "red", pch = 16)
lines(WA.gov$year, WA.gov$perc.misc*100, col = "darkgreen")
points(WA.gov$year, WA.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     







plot(WV.lower$year, WV.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "WV, Business")
points(WV.lower$year, WV.lower$perc.business*100, col = "blue", pch = 16)
lines(WV.upper$year, WV.upper$perc.business*100, col = "red")
points(WV.upper$year, WV.upper$perc.business*100, col = "red", pch = 16)
lines(WV.gov$year, WV.gov$perc.business*100, col = "darkgreen")
points(WV.gov$year, WV.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(WV.lower$year, WV.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "WV, Political")
points(WV.lower$year, WV.lower$perc.political*100, col = "blue", pch = 16)
lines(WV.upper$year, WV.upper$perc.political*100, col = "red")
points(WV.upper$year, WV.upper$perc.political*100, col = "red", pch = 16)
lines(WV.gov$year, WV.gov$perc.political*100, col = "darkgreen")
points(WV.gov$year, WV.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(WV.lower$year, WV.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "WV, Union")
points(WV.lower$year, WV.lower$perc.union*100, col = "blue", pch = 16)
lines(WV.upper$year, WV.upper$perc.union*100, col = "red")
points(WV.upper$year, WV.upper$perc.union*100, col = "red", pch = 16)
lines(WV.gov$year, WV.gov$perc.union*100, col = "darkgreen")
points(WV.gov$year, WV.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(WV.lower$year, WV.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "WV, Advocacy")
points(WV.lower$year, WV.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(WV.upper$year, WV.upper$perc.advocacy*100, col = "red")
points(WV.upper$year, WV.upper$perc.advocacy*100, col = "red", pch = 16)
lines(WV.gov$year, WV.gov$perc.advocacy*100, col = "darkgreen")
points(WV.gov$year, WV.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(WV.lower$year, WV.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "WV, Public")
points(WV.lower$year, WV.lower$perc.public*100, col = "blue", pch = 16)
lines(WV.upper$year, WV.upper$perc.public*100, col = "red")
points(WV.upper$year, WV.upper$perc.public*100, col = "red", pch = 16)
lines(WV.gov$year, WV.gov$perc.public*100, col = "darkgreen")
points(WV.gov$year, WV.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(WV.lower$year, WV.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "WV, Misc")
points(WV.lower$year, WV.lower$perc.misc*100, col = "blue", pch = 16)
lines(WV.upper$year, WV.upper$perc.misc*100, col = "red")
points(WV.upper$year, WV.upper$perc.misc*100, col = "red", pch = 16)
lines(WV.gov$year, WV.gov$perc.misc*100, col = "darkgreen")
points(WV.gov$year, WV.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
























par(mfrow=c(3, 6)) #Establish aesthetic parameters of the figure

plot(WI.lower$year, WI.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "WI, Business")
points(WI.lower$year, WI.lower$perc.business*100, col = "blue", pch = 16)
lines(WI.upper$year, WI.upper$perc.business*100, col = "red")
points(WI.upper$year, WI.upper$perc.business*100, col = "red", pch = 16)
lines(WI.gov$year, WI.gov$perc.business*100, col = "darkgreen")
points(WI.gov$year, WI.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(WI.lower$year, WI.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "WI, Political")
points(WI.lower$year, WI.lower$perc.political*100, col = "blue", pch = 16)
lines(WI.upper$year, WI.upper$perc.political*100, col = "red")
points(WI.upper$year, WI.upper$perc.political*100, col = "red", pch = 16)
lines(WI.gov$year, WI.gov$perc.political*100, col = "darkgreen")
points(WI.gov$year, WI.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(WI.lower$year, WI.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "WI, Union")
points(WI.lower$year, WI.lower$perc.union*100, col = "blue", pch = 16)
lines(WI.upper$year, WI.upper$perc.union*100, col = "red")
points(WI.upper$year, WI.upper$perc.union*100, col = "red", pch = 16)
lines(WI.gov$year, WI.gov$perc.union*100, col = "darkgreen")
points(WI.gov$year, WI.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(WI.lower$year, WI.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "WI, Advocacy")
points(WI.lower$year, WI.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(WI.upper$year, WI.upper$perc.advocacy*100, col = "red")
points(WI.upper$year, WI.upper$perc.advocacy*100, col = "red", pch = 16)
lines(WI.gov$year, WI.gov$perc.advocacy*100, col = "darkgreen")
points(WI.gov$year, WI.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(WI.lower$year, WI.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "WI, Public")
points(WI.lower$year, WI.lower$perc.public*100, col = "blue", pch = 16)
lines(WI.upper$year, WI.upper$perc.public*100, col = "red")
points(WI.upper$year, WI.upper$perc.public*100, col = "red", pch = 16)
lines(WI.gov$year, WI.gov$perc.public*100, col = "darkgreen")
points(WI.gov$year, WI.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(WI.lower$year, WI.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "WI, Misc")
points(WI.lower$year, WI.lower$perc.misc*100, col = "blue", pch = 16)
lines(WI.upper$year, WI.upper$perc.misc*100, col = "red")
points(WI.upper$year, WI.upper$perc.misc*100, col = "red", pch = 16)
lines(WI.gov$year, WI.gov$perc.misc*100, col = "darkgreen")
points(WI.gov$year, WI.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     






plot(WY.lower$year, WY.lower$perc.business*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "WY, Business")
points(WY.lower$year, WY.lower$perc.business*100, col = "blue", pch = 16)
lines(WY.upper$year, WY.upper$perc.business*100, col = "red")
points(WY.upper$year, WY.upper$perc.business*100, col = "red", pch = 16)
lines(WY.gov$year, WY.gov$perc.business*100, col = "darkgreen")
points(WY.gov$year, WY.gov$perc.business*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     
legend("topleft", bty = "n", col = c("blue", "red", "darkgreen"), pch = 16, c("Lower House", "Upper House", "Gubernatorial"))

plot(WY.lower$year, WY.lower$perc.political*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "WY, Political")
points(WY.lower$year, WY.lower$perc.political*100, col = "blue", pch = 16)
lines(WY.upper$year, WY.upper$perc.political*100, col = "red")
points(WY.upper$year, WY.upper$perc.political*100, col = "red", pch = 16)
lines(WY.gov$year, WY.gov$perc.political*100, col = "darkgreen")
points(WY.gov$year, WY.gov$perc.political*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(WY.lower$year, WY.lower$perc.union*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "WY, Union")
points(WY.lower$year, WY.lower$perc.union*100, col = "blue", pch = 16)
lines(WY.upper$year, WY.upper$perc.union*100, col = "red")
points(WY.upper$year, WY.upper$perc.union*100, col = "red", pch = 16)
lines(WY.gov$year, WY.gov$perc.union*100, col = "darkgreen")
points(WY.gov$year, WY.gov$perc.union*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(WY.lower$year, WY.lower$perc.advocacy*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "WY, Advocacy")
points(WY.lower$year, WY.lower$perc.advocacy*100, col = "blue", pch = 16)
lines(WY.upper$year, WY.upper$perc.advocacy*100, col = "red")
points(WY.upper$year, WY.upper$perc.advocacy*100, col = "red", pch = 16)
lines(WY.gov$year, WY.gov$perc.advocacy*100, col = "darkgreen")
points(WY.gov$year, WY.gov$perc.advocacy*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(WY.lower$year, WY.lower$perc.public*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "WY, Public")
points(WY.lower$year, WY.lower$perc.public*100, col = "blue", pch = 16)
lines(WY.upper$year, WY.upper$perc.public*100, col = "red")
points(WY.upper$year, WY.upper$perc.public*100, col = "red", pch = 16)
lines(WY.gov$year, WY.gov$perc.public*100, col = "darkgreen")
points(WY.gov$year, WY.gov$perc.public*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     

plot(WY.lower$year, WY.lower$perc.misc*100, xaxt = "n", xlim = c(1990, 2016), col = "blue", type = "l", pch = 16, ylim = c(0, 50), xlab = "Year", ylab = "Percent", main = "WY, Misc")
points(WY.lower$year, WY.lower$perc.misc*100, col = "blue", pch = 16)
lines(WY.upper$year, WY.upper$perc.misc*100, col = "red")
points(WY.upper$year, WY.upper$perc.misc*100, col = "red", pch = 16)
lines(WY.gov$year, WY.gov$perc.misc*100, col = "darkgreen")
points(WY.gov$year, WY.gov$perc.misc*100, col = "darkgreen", pch = 16)
axis(1, at = c(1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014), c("92", "94", "96", "98", "00", "02", "04", "06", "08", "10", "12", "14"))     















































