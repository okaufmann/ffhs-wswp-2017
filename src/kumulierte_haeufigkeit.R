# shows diagram for the cumulative percentage
# http://www.statmethods.net/graphs/line.html
myvalues <- read.csv("kumulierte_haeufigkeiten.csv")

# Read min, max values for x and y values
xvalues <- range(myvalues$x)
yvalues <- range(myvalues$y)

# Show basic diagram without any lines
plot(xvalues, yvalues, type="n", xlab="GNI")

    lines(myvalues$x,
        myvalues$y,
        type="b",
        lwd=2,
        col="blue",
        lty=1)
