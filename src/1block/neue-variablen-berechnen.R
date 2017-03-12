# load R Commander
library(Rcmdr)

# load RData-file
load("C:/Temp/Hyper.RData")

# multiply varaible bz0 with 5
data1$newVariable <- with(data1, bz0 * 5)

oldVariable1 <- 42
oldVariable2 <- 1337

# addition
newVariable <- oldVariable1 + oldVariable2
cat("newVariable <- oldVariable1 + oldVariable2 = ", newVariable, "\n")

# subtraction
newVariable <- oldVariable1 - oldVariable2
cat("newVariable <- oldVariable1 - oldVariable2 = ", newVariable, "\n")

# multiplication
newVariable <- oldVariable1 * oldVariable2
cat("newVariable <- oldVariable1 * oldVariable2 = ", newVariable, "\n")

# exponentiate
newVariable <- oldVariable1 ** 3
cat("newVariable <- oldVariable1 ** 3 = ", newVariable, "\n")

# lower than
newVariable <- oldVariable1 < 100
cat("newVariable <- oldVariable1 < 100 = ", newVariable, "\n")

# lower equal than
newVariable <- oldVariable1 <= 42
cat("newVariable <- oldVariable1 <= 42 = ", newVariable, "\n")

# bigger than
newVariable <- oldVariable1 > 100
cat("newVariable <- oldVariable1 > 100 = ", newVariable, "\n")

# bigger equal than
newVariable <- oldVariable1 >= 42
cat("newVariable <- oldVariable1 >= 42 = ", newVariable, "\n")

# equal than
newVariable <- oldVariable1 == 100
cat("newVariable <- oldVariable1 == 100 = ", newVariable, "\n")

# not equal than
newVariable <- oldVariable1 != 100
cat("newVariable <- oldVariable1 != 100 = ", newVariable, "\n")

# square root 
newVariable <- sqrt(oldVariable1)
cat("newVariable <- sqrt(oldVariable1) = ", newVariable, "\n")

# natural logarithm
newVariable <- log(oldVariable1)
cat("newVariable <- log(oldVariable1) = ", newVariable, "\n")

# logarithm base 10
newVariable <- log10(oldVariable1)
cat("newVariable <- log10(oldVariable1) = ", newVariable, "\n")

# reciprocal transformation
newVariable <- 1/(oldVariable1)
cat("newVariable <- 1/(oldVariable1) = ", newVariable, "\n")