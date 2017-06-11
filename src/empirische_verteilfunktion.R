data <- read.table("kumulierte_haeufigkeiten.txt")
attach(data)
plot(
    ecdf(data$V1),
    main="Empirische Verteilugsfunktion [temperatur]",
    xlab="kumulierte_haeufigkeiten GIN"
    )