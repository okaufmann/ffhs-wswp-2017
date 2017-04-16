# import dependencies
library(Rcmdr)
library(foreign, pos=14)
library(nortest, pos=15)

# import spss data into data1
data1 <- read.spss("C:/Temp/Hyper.sav",
   use.value.labels=TRUE, max.value.labels=Inf, to.data.frame=TRUE)
colnames(data1) <- tolower(colnames(data1))

# transform gew into gew_l
data1$rrs12_l <- with(data1, log(rrs12))

# do shapiro wilk test
with(data1, shapiro.test(rrs12_l))