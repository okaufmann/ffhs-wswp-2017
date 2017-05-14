N <- 10 # rows 
M <- 100 # columns

# valuesNormalized <- c(rnorm(N*M,mean=0,sd=1))

sequences <- c()

for(i in 1:M) {
    sequence <- c(rnorm(N, mean=0, sd=1))
    sequences <- append(sequences, sequence)
}

values = matrix(
    sequences,
    nrow=M,
    ncol=N)

valuesTransposed = t(values)

# calculate 100 sums consisting of 100 summands
sums = c()
for(x in 1:M) {
    summands = c()
    for(y in 1:M) {
        val <- valuesTransposed[x,y]
        summands <- append(summands, val)
    }
    sums <- sum(summands)
}

print(sums)

# min <- min(valuesNormalized)
# max <- max(valuesNormalized)
# range <- max - min

# min
# max
# range
# for(i in 1:(N*M)) { 
#     currentValue <- valuesNormalized[i]
#     currentValueInRange <- currentValue+abs(min)
#     newValue <- 1/range*currentValueInRange
#     newValue2 <- newValue * 2 - 1
#     values[i] <- newValue2
# }

#tail(valuesNormalized, n=10)
print(values[1,1])