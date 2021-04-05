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
