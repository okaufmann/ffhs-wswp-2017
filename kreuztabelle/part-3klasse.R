# import dependencies
library(Rcmdr, pos=14)

.Table <- matrix(c(15.6,48.8,84.4,51.2), 2, 2, byrow=TRUE)
rownames(.Table) <- c('s', 'd')
colnames(.Table) <- c('m', 'w')
.Table  # Counts
.Test <- chisq.test(.Table, correct=FALSE)
.Test
remove(.Test)
remove(.Table)
