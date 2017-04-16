# import dependencies
library(Rcmdr, pos=14)

.Table <- matrix(c(34.4,96.5,65.6,3.5), 2, 2, byrow=TRUE)
rownames(.Table) <- c('s', 'd')
colnames(.Table) <- c('m', 'w')
.Table  # Counts
.Test <- chisq.test(.Table, correct=FALSE)
.Test
remove(.Test)
remove(.Table)