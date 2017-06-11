# R Commander öffnen
library(Rcmdr)

# Daten laden
load("C:/Temp/Hyper.RData")

# Daten aufteilen
DatasetAlpha = data1[data1[, "med"] == "Alphasan",]
DatasetBeta = data1[data1[, "med"] == "Betasan",]

# Arithmetische Mittel für Anfangswerte
mean(DatasetAlpha$rrs0)
mean(DatasetBeta$rrs0)

# Konfidenzintervall 95% für Anfangswerte
with(DatasetAlpha, (t.test(rrs0, alternative='two.sided',
mu=0.0, conf.level=.95)))
with(DatasetBeta, (t.test(rrs0, alternative='two.sided', mu=0.0,
conf.level=.95)))

# Arithemtisches Mittel nach 12 Monaten
mean(DatasetAlpha$rrs12)
mean(DatasetBeta$rrs12)