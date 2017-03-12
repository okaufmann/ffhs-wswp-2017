# load R Commander
library(Rcmdr)

# import spss data into data1
data1 <- 
  read.spss("C:/Temp/Hyper.sav",
   use.value.labels=TRUE, max.value.labels=Inf, to.data.frame=TRUE)
colnames(data1) <- tolower(colnames(data1))

# save dataset "data1" to RData file
save("data1", file="C:/Temp/Hyper.RData")

# load RData-file
load("C:/Temp/Hyper.RData")
