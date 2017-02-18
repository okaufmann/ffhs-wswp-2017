## Hist api:
# hist(AirPassengers,
#      main="Histogram for Air Passengers",
#      xlab="Passengers",
#      border="blue",
#      col="green",
#      xlim=c(100,700),
#      las=1,
#      breaks=5,
#      prob = TRUE)

# Go to
myvalues <- read.csv("data.csv")

histData <- myvalues$values

hist(histData,
     main="Histogram PVA1",
     xlab="GNI",
     border="blue",
     col="pink",
     xlim=c(20000,70000),
     # freq=TRUE,
     breaks=c(20000,24000,28000,48000,68000),
     right=TRUE
     )