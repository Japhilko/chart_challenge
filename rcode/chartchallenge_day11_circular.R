#30DaysChartChallenge 
# Jan-Philipp Kolb
# Sat Apr 10 12:12:02 2021
# Day11 - distribution circular

install.packages("CircNNTSR")
library(CircNNTSR)
data(DataB5FisherSpherical)

plot(DataB5FisherSpherical)


main_path <- "C:/github/chart_challenge/"
chart_path <- paste0(main_path,"charts")



# A rose plot -------------------------------------------------------------



# Another round plot ------------------------------------------------------


library(circlize)

# Create data
data = data.frame(
  factor = sample(letters[1:8], 1000, replace = TRUE),
  x = rnorm(1000), 
  y = runif(1000)
)


png(paste0(chart_path,"chart_challenge11_circular.png"))
# Step1: Initialise the chart giving factor and x-axis.
circos.initialize( factors=data$factor, x=data$x )
# Step 2: Build the regions. 
circos.trackPlotRegion(factors = data$factor, y = data$y, panel.fun = function(x, y) {
  circos.axis()
})
# Step 3: Add points
circos.trackPoints(data$factor, data$x, data$y, col = "royalblue", pch = 20, cex = 0.5) 
dev.off()


# For day 11 of the #30DaysChartChallenge - circular I found the #rstats package circlize. Thanks to @jokergoo_gu for this great package.


# Links -------------------------------------------------------------------



# https://www.r-graph-gallery.com/224-basic-circular-plot.html
# https://cran.r-project.org/web/packages/CircNNTSR/CircNNTSR.pdf
# http://www.sthda.com/english/wiki/strip-charts-1-d-scatter-plots-r-base-graphs
# https://cran.r-project.org/web/packages/dlnm/dlnm.pdf