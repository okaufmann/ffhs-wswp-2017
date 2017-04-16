# import dependencies
library(Rcmdr)
library(foreign, pos=14)
library(nortest, pos=15)

# import spss data into data1
data1 <- read.spss("C:/dev/ffhs/wswp-oli/Hyper.sav", use.value.labels=TRUE, 
  max.value.labels=Inf, to.data.frame=TRUE)
colnames(data1) <- tolower(colnames(data1))

scatterplotMatrix(~a+gew+gr, reg.line=FALSE, smooth=FALSE, spread=FALSE, 
  span=0.5, ellipse=FALSE, levels=c(.5, .9), id.n=0, diagonal = 'density', 
  data=data1)