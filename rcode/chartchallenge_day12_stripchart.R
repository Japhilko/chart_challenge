#30DaysChartChallenge 
# Jan-Philipp Kolb
# Tue Apr 13 21:23:58 2021
# Day12 - strips


main_path <- "C:/github/chart_challenge/"
chart_path <- paste0(main_path,"charts/")

png(paste0(chart_path,"chart_challenge12_stripchart.png"))
stripchart(len ~ dose, data = ToothGrowth,
           frame = FALSE, vertical = TRUE,
           method = "jitter", pch = c(15, 18, 16),
           col = c("#CD6600", "#68228B", "#8B0000"),
           main = "Length by dose", xlab = "Dose", ylab = "Length")
dev.off()

#Day 12 of the #30DaysChartChallenge. A stripchart made with #rstats. A dataset on the Effect of Vitamin C on Tooth Growth in Guinea Pigs. The example is from sthda.com/english/