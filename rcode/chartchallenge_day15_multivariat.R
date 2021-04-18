#30DaysChartChallenge 
# Jan-Philipp Kolb
# Tue Apr 13 21:50:03 2021
# relationships - multivariat


main_path <- "C:/github/chart_challenge/"
chart_path <- paste0(main_path,"charts/")

library(car)


png(paste0(chart_path,"chart_challenge15_multivariate.png"))
scatterplotMatrix(iris[,1:4])
dev.off()

# Day 15 of the #30DayChartChallenge: multivariate. Ised the #rstats package car to visualize the famous iris dataset.

