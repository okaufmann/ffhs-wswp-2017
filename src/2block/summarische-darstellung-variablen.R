# load R Commander
library(Rcmdr)

# load RData-file
load("C:/Temp/Hyper.RData")

# normality test with shapiro-wilk
with(data1, shapiro.test(rrs0))

# calcuclate parameters for variable rrs0
numSummary(Dataset[,"rrs0"], statistics=c("mean", "sd", "se(mean)", "IQR", 
   "quantiles", "cv", "skewness", "kurtosis"), quantiles=c(0,.25,.5,.75,1), 
   type="2")

# calculate range 
diff(range(data1[,"rrs0"]))

# calculate parameters for rrs0 gener-specific
numSummary(data1[,"rrs0"], groups=data1$g, statistics=c("mean", "sd", "se(mean)", "IQR", "quantiles"), quantiles=c(0,.25,.5,.75,1))

# calculate parameters for a gener-specific
numSummary(data1[,"a"], groups=data1$g, statistics=c("mean", "sd", "se(mean)", "IQR", "quantiles"), quantiles=c(0,.25,.5,.75,1))
