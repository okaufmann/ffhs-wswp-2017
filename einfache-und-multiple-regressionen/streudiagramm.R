# import dependencies
library(Rcmdr)
library(foreign, pos=14)

# import spss data into data1
data1 <- read.spss("C:/Temp/Hyper.sav",
   use.value.labels=TRUE, max.value.labels=Inf, to.data.frame=TRUE)
colnames(data1) <- tolower(colnames(data1))

# generate scatterplot
scatterplot(gew~rrs0, reg.line=FALSE, smooth=FALSE, spread=FALSE, 
  boxplots=FALSE, span=0.5, ellipse=FALSE, levels=c(.5, .9), data=data1)
