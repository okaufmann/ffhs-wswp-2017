n <- 10 # rows 
m <- 100 # columns

sequences <- c()

# generate 10 sequences
for(i in 1:n) {
    sequence <- c(runif(m, min=-1, max=1))
    sequences <- append(sequences, sequence)
}

# create matrix where rows and columns are inverted
values = matrix(
    sequences,
    nrow=m,
    ncol=n)

# transform matrix into correct form
valuesTransposed = t(values)
print(length(valuesTransposed[1,])) # first row must have 100 entries
print(length(valuesTransposed[,1])) # first column must have 10 entries

# calculate 100 sums consisting of 10 summands (one per sequence)
sums = c()
for(y in 1:n) {
    summands = c()
    for(x in 1:m) {
        val <- valuesTransposed[y,x]
        summands <- append(summands, val)
    }
    # append sum to sums vector
    sums <- append(sums, sum(summands))
}

# show histogram
hist(sums)
