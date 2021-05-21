#30DaysChartChallenge 
# Jan-Philipp Kolb
# Sun Apr 18 22:22:10 2021
# relationships - pop culture




main_path <- "C:/github/chart_challenge/"
chart_path <- paste0(main_path,"charts/")


png(paste0(chart_path,"chart_challenge17_popculture.png"))
plot(rep(1:5,5),xlim=c(0,6),ylim=c(0,6),rep(1:5,each=5),xlab="",ylab="",lwd=4,pch=1:25, xaxt='n',yaxt="n",
     cex=5,col=c("#0000CD", "#A52A2A", "#8A2BE2", "#7FFF00", "#458B00", "#8B008B", "#FFB90F", "#FF1493", "#FFD700", "#FF7F24", "#C0FF3E", "#FFC1C1", "#48D1CC", "#008B00", "#FF6EB4", "#FFFF00", "#FF0000", "#8B4789", "#BBFFFF", "#D02090", "#FF8C69", "#4876FF", "#FF83FA", "#36648B", "#8B6969"))

dev.off()

# Day 17 of the #30DayChartChallenge: pop culture. I made something like pop art? My code is on https://github.com/Japhilko/chart_challenge #rstats 



# Links -------------------------------------------------------------------


# http://www.sthda.com/english/wiki/r-plot-pch-symbols-the-different-point-shapes-available-in-r

# https://www.kunstschaetzen.de/blog/pop-art-kunstrichtung/

# https://stackoverflow.com/questions/1154242/remove-plot-axis-values

# https://www.statmethods.net/advgraphs/axes.html



# Links -------------------------------------------------------------------

# https://www.invaluable.com/blog/what-is-pop-art/
