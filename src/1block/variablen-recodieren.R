# Lade R Commander
library(Rcmdr)

# load dataset
load("C:/Temp/Hyper.RData")

# recode variable "g"
# set values from "Männlich" to and "Weiblich" to 1
data1 <- within(data1, {
  g_rec <- Recode(g, '"Männlich" = 0; "Weiblich" = 1', 
  as.factor.result=FALSE)
})
