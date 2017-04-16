# import dependencies
library(Rcmdr, pos=14)

.Table <- matrix(c(14.1,88.7,85.9,11.3), 2, 2, byrow=TRUE)
rownames(.Table) <- c('s', 'd')
colnames(.Table) <- c('m', 'w')
.Table  # Counts
.Test <- chisq.test(.Table, correct=FALSE)
.Test
remove(.Test)
remove(.Table)