#30DaysChartChallenge 
# Jan-Philipp Kolb
# Day4 - comparison - magical



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