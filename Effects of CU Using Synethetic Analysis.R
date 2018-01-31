
# READ IN DATA AND CALL LIBRARIES -----------------------------------------

library(foreign)
library(Synth)
library(lfe)
library(standardize)
library(synth_runner)

cu0 <- read.csv("Final Outcome Analysis Data.csv")
head(cu0)

gdp <- read.csv("NewStateGDP.csv")
head(gdp)

dwnom <- read.csv("State DW Nominate.csv")
head(dwnom)

union <- read.csv("Union Membership.csv")
head(union)

deficit <- read.csv("State Deficits.csv")
head(deficit)


# ORGANIZE THE DATA -------------------------------------------------------

gdp <- subset(gdp, legyear >= 2003)
cu0a <- subset(cu0, legyear >= 2003)
dwnom <- subset(dwnom, legyear >= 2003)

tax09 <- subset(cu0, legyear == 2009, select = c("statenum", "standtax"))
names(tax09) <- c("statenum", "tax09")

tax08 <- subset(cu0, legyear == 2008, select = c("statenum", "standtax"))
names(tax08) <- c("statenum", "tax08")

tax07 <- subset(cu0, legyear == 2007, select = c("statenum", "standtax"))
names(tax07) <- c("statenum", "tax07")

tax06 <- subset(cu0, legyear == 2006, select = c("statenum", "standtax"))
names(tax06) <- c("statenum", "tax06")

tax05 <- subset(cu0, legyear == 2005, select = c("statenum", "standtax"))
names(tax05) <- c("statenum", "tax05")

tax04 <- subset(cu0, legyear == 2004, select = c("statenum", "standtax"))
names(tax04) <- c("statenum", "tax04")

tax03 <- subset(cu0, legyear == 2003, select = c("statenum", "standtax"))
names(tax03) <- c("statenum", "tax03")

tax02 <- subset(cu0, legyear == 2002, select = c("statenum", "standtax"))
names(tax02) <- c("statenum", "tax02")

tax01 <- subset(cu0, legyear == 2001, select = c("statenum", "standtax"))
names(tax01) <- c("statenum", "tax01")

tax00 <- subset(cu0, legyear == 2000, select = c("statenum", "standtax"))
names(tax00) <- c("statenum", "tax00")


cu1 <- merge(cu0a, gdp, by = c("state", "legyear"))
cu2 <- merge(cu1, dwnom, by = c("state", "legyear"))
cu3 <- merge(cu2, union, by = c("state", "legyear"))
cu4 <- merge(cu3, deficit, by = c("state", "legyear"))
cu5 <- merge(cu4, tax09, by = c("statenum"))
cu6 <- merge(cu5, tax08, by = c("statenum"))
cu7 <- merge(cu6, tax07, by = c("statenum"))
cu8 <- merge(cu7, tax06, by = c("statenum"))
cu9 <- merge(cu8, tax05, by = c("statenum"))
cu10 <- merge(cu9, tax04, by = c("statenum"))
cu11 <- merge(cu10, tax03, by = c("statenum"))
cu12 <- merge(cu11, tax02, by = c("statenum"))
cu13 <- merge(cu12, tax01, by = c("statenum"))
cu <- merge(cu13, tax00, by = c("statenum"))


head(cu)


normalize <- function(x, ...){(x - min(x, ...)) / (max(x, ...) - min(x, ...))}
cu$indtaxrev <- cu$indtax*-1
cu$standintax <- normalize(cu$indtaxrev, na.rm = TRUE)


write.csv(cu, "CU Analysis Data.csv")



# TEST THE DATA -----------------------------------------------------------

test <- subset(cu, banstate = 0)

m1 <- felm(standtax ~ standintax + gdplag1 + G(state) + G(legyear), data = test, cluster = test$state)
summary(m1)



# SYNTHESIZE TAX DATA BAN/NOBAN: COMPARE STANDARDIZED TO NON-STANDARDIZED RESULTS--------------------------------------------------------

cusynth <- subset(cu, select = c(banstate, postcit, legyear, statenum, tax, standtax, indtax, Rperc, tax09, tax03, tax00, gdplag1, unemploylag1, deficitlag1, firmslag, unionmem))
cusynthfinal <- na.omit(cusynth)
head(cusynthfinal)

control <- subset(cusynthfinal, banstate == 0)
head(control)
control1 <- aggregate(control, by = list(control$legyear), FUN = mean)
control1 <- subset(control1, select = -c(Group.1))
head(control1)

treatment <- subset(cusynthfinal, banstate == 1, select = -c(statenum))
head(treatment)
treatment1 <- aggregate(treatment, by = list(treatment$legyear), FUN = mean)
treatment1$statenum <- 28
head(treatment1)
treatment <- subset(treatment1, select = -c(Group.1))
head(treatment)

cusynthfinal <- rbind(control, treatment)
head(cusynthfinal, n = 25)

#Standardized Tax Rates
dataprep.out1 <- 
  dataprep(
  foo = cusynthfinal,
  predictors = c("gdplag1"),
  dependent = "standtax",
  unit.variable = "statenum",
  time.variable = "legyear",
  treatment.identifier = c(28),
  controls.identifier = c(2,3,4,5,6,7,8,9,10,11,13,14,15,16,18, 19,21, 22, 23, 24, 25, 26, 27), 
  time.predictors.prior = c(2003:2009),
  time.optimize.ssr = c(2003:2015)
  )

synth.out1 <- synth(dataprep.out1)

synth.tables1 <- synth.tab(dataprep.res = dataprep.out1, synth.res = synth.out1)

print(synth.tables1)

par(mfrow= c(2, 1))
path.plot(synth.res = synth.out1,
          dataprep.res = dataprep.out1,
          Ylab = c("Standardized Pro-Corporate Tax Rates"),
          Xlab = c("Year"),
          Ylim = c(.25,.55),
          Legend = NA)
legend("topleft", bty = "n", c("Ban States", "Synthetic Ban States"), lty = c(1, 2))
abline(v = 2010, col = "red")
lines(control1$legyear, control1$standtax, col = "blue")
title("Comparing No Ban States to Ban States")


#Non-Standardized Tax Rates
dataprep.out2 <- 
  dataprep(
    foo = cusynthfinal,
    predictors = c("gdplag1"),
    dependent = "tax",
    unit.variable = "statenum",
    time.variable = "legyear",
    treatment.identifier = c(28),
    controls.identifier = c(2,3,4,5,6,7,8,9,10,11,13,14,15,16,18, 19,21, 22, 23, 24, 25, 26, 27), 
    time.predictors.prior = c(2003:2009),
    time.optimize.ssr = c(2003:2015)
  )

synth.out2 <- synth(dataprep.out2)

synth.tables2 <- synth.tab(dataprep.res = dataprep.out2, synth.res = synth.out2)

print(synth.tables2)

path.plot(synth.res = synth.out2,
          dataprep.res = dataprep.out2,
          Ylab = c("Standardized Pro-Corporate Tax Rates"),
          Xlab = c("Year"),
          Ylim = c(-9,-5),
          Legend = NA)
legend("topleft", bty = "n", c("Ban States", "Synthetic Ban States"), lty = c(1, 2))
abline(v = 2010, col = "red")
lines(control1$legyear, control1$tax, col = "blue")
title("Comparing No Ban States to Ban States")

#Note: The model that includes every year has a slightly better fit than the one with time series as a predictor



# SYNTHESIZE TAX DATA BAN/NOBAN: EVERY LAGGED YEAR AS A PREDICTOR VS. TIME SERIES PREDICTOR--------------------------------------------------------

cusynth <- subset(cu, select = c(banstate, postcit, legyear, statenum, tax, standtax, indtax, Rperc, tax09, tax08, tax07, tax06, tax05, tax04, tax03, tax02, tax01, tax00, gdplag1, unemploylag1, deficitlag1, firmslag, unionmem))
cusynthfinal <- na.omit(cusynth)
head(cusynthfinal, n = 25)

control <- subset(cusynthfinal, banstate == 0)
head(control)
control1 <- aggregate(control, by = list(control$legyear), FUN = mean)
control1 <- subset(control1, select = -c(Group.1))
head(control1)

treatment <- subset(cusynthfinal, banstate == 1, select = -c(statenum))
head(treatment)
treatment1 <- aggregate(treatment, by = list(treatment$legyear), FUN = mean)
treatment1$statenum <- 28
head(treatment1)
treatment <- subset(treatment1, select = -c(Group.1))
head(treatment)

cusynthfinal <- rbind(control, treatment)
head(cusynthfinal, n = 25)

#Every Year as a Predictor
dataprep.out3 <- 
  dataprep(
    foo = cusynthfinal,
    predictors = c("tax09", "tax08", "tax07", "tax06", "tax05", "tax04", "tax03", "tax02", "tax01", "tax00", "indtax", "Rperc", "gdplag1", "unemploylag1", "deficitlag1", "firmslag", "unionmem"),
    dependent = "standtax",
    unit.variable = "statenum",
    time.variable = "legyear",
    treatment.identifier = c(28),
    controls.identifier = c(2,3,4,5,6,7,8,9,10,11,13,14,15,16,18, 19,21, 22, 23, 24, 25, 26, 27), 
    time.predictors.prior = c(2003:2009),
    time.optimize.ssr = c(2003:2009),
    time.plot = c(2003:2015)
  )

synth.out3 <- synth(dataprep.out3)

synth.tables3 <- synth.tab(dataprep.res = dataprep.out3, synth.res = synth.out3)

print(synth.tables3)

par(mfrow= c(1, 1))
path.plot(synth.res = synth.out3,
          dataprep.res = dataprep.out3,
          Ylab = c("Pro-Corporate Tax Rates"),
          Xlab = c("Year"),
          Ylim = c(.25,.55),
          Legend = NA)
legend("topleft", bty = "n", c("Ban States", "Synthetic Ban States"), lty = c(1, 2))
abline(v = 2010, col = "red")
lines(control1$legyear, control1$standtax, col = "blue")
title("Comparing No Ban States to Ban States (Each Year as a Predictor)")


#Time Series as a Predictor
dataprep.out4 <- 
  dataprep(
    foo = cusynthfinal,
    predictors = c("standtax", "indtax", "Rperc", "gdplag1", "unemploylag1", "deficitlag1", "firmslag", "unionmem"),
    dependent = "standtax",
    unit.variable = "statenum",
    time.variable = "legyear",
    treatment.identifier = c(28),
    controls.identifier = c(2,3,4,5,6,7,8,9,10,11,13,14,15,16,18, 19,21, 22, 23, 24, 25, 26, 27), 
    time.predictors.prior = c(2003:2009),
    time.optimize.ssr = c(2003:2009),
    time.plot = c(2003:2015)
  )

synth.out4 <- synth(dataprep.out4)

synth.tables4 <- synth.tab(dataprep.res = dataprep.out4, synth.res = synth.out4)

print(synth.tables4)

path.plot(synth.res = synth.out4,
          dataprep.res = dataprep.out4,
          Ylab = c("Standardized Pro-Corporate Tax Rates"),
          Xlab = c("Year"),
          Ylim = c(.25, .55),
          Legend = NA)
legend("topleft", bty = "n", c("Ban States", "Synthetic Ban States"), lty = c(1, 2))
abline(v = 2010, col = "red")
lines(control1$legyear, control1$standtax, col = "blue")
title("Comparing No Ban States to Ban States (Time Series as a Predictor)")



# SYNTHESIZE TAX DATA BAN/NOBAN: FULL MODEL WITH ALL UNITS--------------------------------------------------------

cusynth <- subset(cu, select = c(banstate, postcit, legyear, statenum, tax, standtax, indtax, Rperc, tax09, tax08, tax07, tax06, tax05, tax04, tax03, tax02, tax01, tax00, gdplag1, unemploylag1, deficitlag1, firmslag, unionmem))
cusynthfinal <- na.omit(cusynth)
head(cusynthfinal)

control <- subset(cusynthfinal, banstate == 0)
head(control)
control1 <- aggregate(control, by = list(control$legyear), FUN = mean)
control1 <- subset(control1, select = -c(Group.1))
head(control1)

treatment <- subset(cusynthfinal, banstate == 1, select = -c(statenum))
head(treatment)
treatment1 <- aggregate(treatment, by = list(treatment$legyear), FUN = mean)
treatment1$statenum <- 28
head(treatment1)
treatment <- subset(treatment1, select = -c(Group.1))
head(treatment)

cusynthfinal <- rbind(control, treatment)
head(cusynthfinal, n = 25)

dataprep.out5 <- 
  dataprep(
    foo = cusynthfinal,
    predictors = c("tax09", "tax08", "tax07", "tax06", "tax05", "tax04", "tax03", "tax02", "tax01", "tax00", "indtax", "Rperc", "gdplag1", "unemploylag1", "deficitlag1", "unionmem"),
    dependent = "standtax",
    unit.variable = "statenum",
    time.variable = "legyear",
    treatment.identifier = c(28),
    controls.identifier = c(2,3,4,5,6,7,8,9,10,11,13,14,15,16,18, 19,21, 22, 23, 24, 25, 26, 27), 
    time.predictors.prior = c(2003:2009),
    time.optimize.ssr = c(2003:2015)
  )

synth.out5 <- synth(dataprep.out5)

synth.tables5 <- synth.tab(dataprep.res = dataprep.out5, synth.res = synth.out5)

print(synth.tables5)

par(mfrow= c(1, 1))
path.plot(synth.res = synth.out5,
          dataprep.res = dataprep.out5,
          Ylab = c("Pro-Corporate Tax Rates"),
          Xlab = c("Year"),
          Ylim = c(.25,.55),
          Legend = NA)
legend("topleft", bty = "n", c("Ban States", "Synthetic Ban States"), lty = c(1, 2))
abline(v = 2010, col = "red")
lines(control1$legyear, control1$standtax, col = "blue")
title("Comparing No Ban States to Ban States")



# SYNTHESIZE TAX DATA BAN/NOBAN: COMPARING EACH TREATED STATE TO THE CONTROL--------------------------------------------------------

cusynth <- subset(cu, select = c(banstate, postcit, legyear, state, statenum, tax, standtax, tax09, tax08, tax07, tax06, tax05, tax04, tax03, tax02, tax01, tax00,  indtax, Rperc, gdplag1, unemploylag1, deficitlag1, firmslag, unionmem))
cusynthfinal <- na.omit(cusynth)
head(cusynthfinal)

control <- subset(cusynthfinal, banstate == 0, -c(state))
head(control)
control1 <- aggregate(control, by = list(control$legyear), FUN = mean)
control1 <- subset(control1, select = -c(Group.1))
head(control1)

treatment <- subset(cusynthfinal, banstate == 1)
table(treatment$state)

ak <- subset(cusynthfinal, banstate == 1 & state == "AK", select = -c(statenum))
ak <- aggregate(ak, by = list(ak$legyear), FUN = mean)
ak$statenum <- 28
ak <- subset(ak, select = -c(Group.1, state))
print(ak) #Singular

az <- subset(cusynthfinal, banstate == 1 & state == "AZ", select = -c(statenum))
az <- aggregate(az, by = list(az$legyear), FUN = mean)
az$statenum <- 28
az <- subset(az, select = -c(Group.1, state))
print(az)

co <- subset(cusynthfinal, banstate == 1 & state == "CO", select = -c(statenum))
co <- aggregate(co, by = list(co$legyear), FUN = mean)
co$statenum <- 28
co <- subset(co, select = -c(Group.1, state))
print(co)

ct <- subset(cusynthfinal, banstate == 1 & state == "CT", select = -c(statenum))
ct <- aggregate(ct, by = list(ct$legyear), FUN = mean)
ct$statenum <- 28
ct <- subset(ct, select = -c(Group.1, state))
head(ct)

ia <- subset(cusynthfinal, banstate == 1 & state == "IA", select = -c(statenum))
ia <- aggregate(ia, by = list(ia$legyear), FUN = mean)
ia$statenum <- 28
ia <- subset(ia, select = -c(Group.1, state))
head(ia)

ky <- subset(cusynthfinal, banstate == 1 & state == "KY", select = -c(statenum))
ky <- aggregate(ky, by = list(ky$legyear), FUN = mean)
ky$statenum <- 28
ky <- subset(ky, select = -c(Group.1, state))
head(ky)

ma <- subset(cusynthfinal, banstate == 1 & state == "MA", select = -c(statenum))
ma <- aggregate(ma, by = list(ma$legyear), FUN = mean)
ma$statenum <- 28
ma <- subset(ma, select = -c(Group.1, state))
head(ma)

mn <- subset(cusynthfinal, banstate == 1 & state == "MN", select = -c(statenum))
mn <- aggregate(mn, by = list(mn$legyear), FUN = mean)
mn$statenum <- 28
mn <- subset(mn, select = -c(Group.1, state))
print(mn) #Singular

mt <- subset(cusynthfinal, banstate == 1 & state == "MT", select = -c(statenum))
mt <- aggregate(mt, by = list(mt$legyear), FUN = mean)
mt$statenum <- 28
mt <- subset(mt, select = -c(Group.1, state))
head(mt)

nc <- subset(cusynthfinal, banstate == 1 & state == "NC", select = -c(statenum))
nc <- aggregate(nc, by = list(nc$legyear), FUN = mean)
nc$statenum <- 28
nc <- subset(nc, select = -c(Group.1, state))
head(nc)

nd <- subset(cusynthfinal, banstate == 1 & state == "ND", select = -c(statenum))
nd <- aggregate(nd, by = list(nd$legyear), FUN = mean)
nd$statenum <- 28
nd <- subset(nd, select = -c(Group.1, state))
print(nd) #Singular

nh <- subset(cusynthfinal, banstate == 1 & state == "NH", select = -c(statenum))
nh <- aggregate(nh, by = list(nh$legyear), FUN = mean)
nh$statenum <- 28
nh <- subset(nh, select = -c(Group.1, state))
head(nh)

ok <- subset(cusynthfinal, banstate == 1 & state == "OK", select = -c(statenum))
ok <- aggregate(ok, by = list(ok$legyear), FUN = mean)
ok$statenum <- 28
ok <- subset(ok, select = -c(Group.1, state))
head(ok)

pa <- subset(cusynthfinal, banstate == 1 & state == "PA", select = -c(statenum))
pa <- aggregate(pa, by = list(pa$legyear), FUN = mean)
pa$statenum <- 28
pa <- subset(pa, select = -c(Group.1, state))
head(pa)

ri <- subset(cusynthfinal, banstate == 1 & state == "RI", select = -c(statenum))
ri <- aggregate(ri, by = list(ri$legyear), FUN = mean)
ri$statenum <- 28
ri <- subset(ri, select = -c(Group.1, state))
head(ri)

tn <- subset(cusynthfinal, banstate == 1 & state == "TN", select = -c(statenum))
tn <- aggregate(tn, by = list(tn$legyear), FUN = mean)
tn$statenum <- 28
tn <- subset(tn, select = -c(Group.1, state))
head(tn)

wi <- subset(cusynthfinal, banstate == 1 & state == "WI", select = -c(statenum))
wi <- aggregate(wi, by = list(wi$legyear), FUN = mean)
wi$statenum <- 28
wi <- subset(wi, select = -c(Group.1, state))
head(wi)

wv <- subset(cusynthfinal, banstate == 1 & state == "WV", select = -c(statenum))
wv <- aggregate(wv, by = list(wv$legyear), FUN = mean)
wv$statenum <- 28
wv <- subset(wv, select = -c(Group.1, state))
head(wv)

cusynthfinal1 <- rbind(control, ak)
cusynthfinal1

cusynthfinal2 <- rbind(control, az)
cusynthfinal2

cusynthfinal3 <- rbind(control, co)
cusynthfinal3

cusynthfinal4 <- rbind(control, ct)
cusynthfinal4

cusynthfinal5 <- rbind(control, ia)
cusynthfinal5

cusynthfinal6 <- rbind(control, ky)
cusynthfinal6

cusynthfinal7 <- rbind(control, ma)
cusynthfinal7

cusynthfinal8 <- rbind(control, mn)
cusynthfinal8

cusynthfinal9 <- rbind(control, mt)
cusynthfinal9

cusynthfinal10 <- rbind(control, nc)
cusynthfinal10

cusynthfinal11 <- rbind(control, nd)
cusynthfinal11

cusynthfinal12 <- rbind(control, nh)
cusynthfinal12

cusynthfinal13 <- rbind(control, ok)
cusynthfinal13

cusynthfinal14 <- rbind(control, pa)
cusynthfinal14

cusynthfinal15 <- rbind(control, ri)
cusynthfinal15

cusynthfinal16 <- rbind(control, tn)
cusynthfinal16

cusynthfinal17 <- rbind(control, wi)
cusynthfinal17

cusynthfinal18 <- rbind(control, wv)
cusynthfinal18


#States 1, 4, 8, 11 are singular--- although unclear why, remove them from loop list

culist <- list(cusynthfinal1, cusynthfinal2, cusynthfinal3, cusynthfinal4, cusynthfinal5, cusynthfinal6, cusynthfinal7, cusynthfinal8, cusynthfinal9, cusynthfinal10, cusynthfinal11, cusynthfinal12, cusynthfinal13, cusynthfinal14, cusynthfinal15, cusynthfinal16, cusynthfinal17, cusynthfinal18)
states <- c("AK", "AZ", "CO", "CT", "IA", "KY", "MA", "MN", "MT", "NC", "ND", "NH", "OK", "PA", "RI", "TN", "WI", "WV")

curesults <- list()
par(mfrow= c(3, 6))
i <- 1

while(i <= 18){
dataprep.out <- 
  dataprep(
    foo = data.frame(culist[[i]]),
    predictors = c("tax09", "tax08", "tax07", "tax06", "tax05", "tax04", "tax03", "tax02", "tax01", "tax00",  "indtax", "Rperc", "gdplag1", "unemploylag1", "deficitlag1", "firmslag", "unionmem"),
    dependent = "standtax",
    unit.variable = "statenum",
    time.variable = "legyear",
    treatment.identifier = c(28),
    controls.identifier = c(2,3,4,5,6,7,8,9,10,11,13,14,15,16,18, 19,21, 22, 23, 24, 25, 26, 27), 
    time.predictors.prior = c(2003:2009),
    time.optimize.ssr = c(2003:2009),
    time.plot = c(2003:2015)
  )

synth.out <- synth(dataprep.out)

rmpse <- as.character(round(sqrt(synth.out$loss.v), digits = 7))

synth.tables <- synth.tab(dataprep.res = dataprep.out, synth.res = synth.out)

curesults[[i]] <- synth.tables #Store results

path.plot(synth.res = synth.out,
          dataprep.res = dataprep.out,
          Ylab = c("Tax Rates"),
          Xlab = c("Year"),
          Ylim = c(0, 1),
          Legend = NA)
legend("topleft", bty = "n", c("Real State", "Synthetic State", "Control States"), lty = c(1, 2, 1), col = c("black", "black", "blue"))
abline(v = 2010, col = "red")
lines(control1$legyear, control1$standtax, col = "blue")
title(states[[i]])
text(2002, .05, (paste0("RMSPE: ", rmpse)), pos = 4, font = 2)

i <- i + 1
}

