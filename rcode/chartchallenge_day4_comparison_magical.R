#30DaysChartChallenge 
# Jan-Philipp Kolb
# Day4 - comparison - magical

library(ggplot2)

main_path <- "C:/github/chart_challenge/"
chart_path <- paste0(main_path,"charts")


points <- 500
# Define the Golden Angle
angle <- pi*(3-sqrt(5))
t <- (1:points) * angle
x <- sin(t)
y <-cos(t)
df <- data.frame(t, x, y)

# Make a scatter plot of points in a spiral
p <- ggplot(df, aes(x*t, y*t))
p + geom_point()


# Change the code from Task 4 to modify the 
# size, transparency, and color of the points
p <- ggplot(df, aes(x*t, y*t))
p + geom_point(size = 8, alpha = 0.5, color = "darkgreen") +
  theme(axis.text = element_blank() ,axis.title = element_blank() ,axis.ticks = element_blank(), panel.background = element_rect(fill="white"))


angle <- 13*pi/180
points <- 2000

t <- (1:points)*angle
x <- sin(t)
y <- cos(t)
df <- data.frame(t, x, y)

# Adjust the plot parameters to create the magenta flower

png(paste0(chart_path,"chart_challenge4_magical.png"))
p <- ggplot(df, aes(x*t, y*t))
p + geom_point(size = 80, alpha = 0.2, shape =1, color = c("#8B0A50"))+
  theme(legend.position="none",
        panel.background = element_rect(fill = "black"),
        panel.grid=element_blank(),
        axis.ticks=element_blank(),
        axis.title=element_blank(),
        axis.text=element_blank())
dev.off()

# My contribution to day 4 of the #30DayChartChallenge. I used the #rstats package ggplot2. Thanks a lot to @em4datasci for the inspiration and @ichrakseven for the code.


# https://twitter.com/30DayChartChall/status/1364963685505073163


# barchart for a comparisson

library("lessR")
library(rtweet)
library(tmaptools)


gc_magic <- tmaptools::geocode_OSM("Magic")


tweets_30 <- search_tweets("Magic", n = 10000,
                           fromDate = "202104010001")



setwd("C:/Arbeit/data/")

cdat <- read.csv("owid-covid-data.csv")

BarChart()




# Links -------------------------------------------------------------------



# https://github.com/owid/covid-19-data/tree/master/public/data

# https://cran.r-project.org/web/packages/lessR/vignettes/BarChart.html

# https://www.government.nl/topics/coronavirus-covid-19/tackling-new-coronavirus-in-the-netherlands/travel-and-holidays/air-travel

# https://datavizcatalogue.com/methods/treemap.html

# https://venngage.com/blog/amazing-infographics/

# https://www.datanovia.com/en/blog/easy-image-processing-in-r-using-the-magick-package/

# https://freierblick.wordpress.com/2012/06/19/algorithmen-natur-und-das-schonste-gemuse-der-welt/

# https://eric.netlify.app/2017/11/24/using-a-multivariate-normal-to-draw-a-flower-in-ggplot2/

# https://github.com/gkaramanis/30daychartchallenge/blob/master/2021/day-4-magical/day-4-magical.R

# https://chichak.github.io/draw-with-ggplot2/

# https://freierblick.wordpress.com/2012/06/19/algorithmen-natur-und-das-schonste-gemuse-der-welt/

# https://www.datanovia.com/en/blog/easy-image-processing-in-r-using-the-magick-package/