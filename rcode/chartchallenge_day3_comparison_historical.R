#30DaysChartChallenge 
# Jan-Philipp Kolb
# Day3 - comparison - historical


# Day3 of the #30DaysChartChallenge. The topic is hitorical comparison. The pie chart was invented in 1806. Although today a bit outdated. 

# https://twitter.com/30DayChartChall/status/1364963685505073163



library(titanic)

main_path <- "C:/github/chart_challenge/"
chart_path <- paste0(main_path,"charts")



png(paste0(chart_path,"chart_challenge3_piechart.png"))
par(mfrow=c(1,2))
  pie(Titanic[,1,2,1],main="Survived",col=c("#00008B", "#228B22", "#8B1A1A", "#FF7F00"))
  pie(Titanic[,1,2,2],main="Not survived",col=c("#00008B", "#228B22", "#8B1A1A", "#FF7F00"))
dev.off()


# day3 of the #30DayChartChallenge: The toppic is historic. I have the historic Titanic data and the historic visualization technique pie chart. Made with #rstats


# Links -------------------------------------------------------------------

# https://www.statmethods.net/graphs/pie.html

# https://www.bpb.de/nachschlagen/datenreport-2018/private-haushalte-einkommen-konsum-wohnen/278181/struktur-der-konsumausgaben

# https://www.destatis.de/DE/Methoden/WISTA-Wirtschaft-und-Statistik/2019/02/entwicklung-lebenshaltungskosten-022019.pdf;jsessionid=44BD90D06A778353AC0BB28C086616B0.live722?__blob=publicationFile

# https://www.destatis.de/DE/Methoden/WISTA-Wirtschaft-und-Statistik/2019/02/entwicklung-lebenshaltungskosten-022019.html

# https://www.computerworld.com/article/3038270/create-maps-in-r-in-10-fairly-easy-steps.html