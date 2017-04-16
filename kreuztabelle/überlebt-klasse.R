# import dependencies
library(Rcmdr)
library(foreign, pos=14)
library(abind, pos=15)

# load spss data into data2
data2 <- read.spss("C:/Temp/titanic.sav", 
  use.value.labels=TRUE, max.value.labels=Inf, to.data.frame=TRUE)
colnames(data2) <- tolower(colnames(data2))

# create two way table
local({
  .Table <- xtabs(~überlebt+klasse, data=data2)
  cat("\nFrequency table:\n")
  print(.Table)
  .Test <- chisq.test(.Table, correct=FALSE)
  print(.Test)
})

