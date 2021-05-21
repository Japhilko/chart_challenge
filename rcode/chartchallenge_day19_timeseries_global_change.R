#30DaysChartChallenge 
# Jan-Philipp Kolb
# Sun Apr 18 22:22:10 2021
# 19 timeseries global change


# Using the covid data ----------------------------------------------------

library(dplyr)
library(ggplot2)

setwd("C:/Arbeit/data/")

dat <- read.csv("owid-covid-data.csv")


filter(dat, dat$date=="2021-03-10")




# Try it with maps --------------------------------------------------------



library(maptools)
library(sp)

data("wrld_simpl")

# https://github.com/Z3tt/30DayChartChallenge_Collection2021



# The tweet ---------------------------------------------------------------



# Day 17 of the #30DayChartChallenge: connections. Metro connections of #Paris. Data from #Openstreetmap. https://github.com/Japhilko/chart_challenge #rstats 


# Links -------------------------------------------------------------------



# https://github.com/Z3tt/30DayChartChallenge_Collection2021

# https://ourworldindata.org/teaching

# https://www.corona-in-zahlen.de/landkreise/

# https://www.globalchange.gov/browse/indicators/arctic-sea-ice-extent

# https://www.worldometers.info/world-population/population-by-country/

# https://cran.r-project.org/web/packages/biogrowth/vignettes/biogrowth_basics.html

# https://ourworldindata.org/grapher/change-in-global-hunger-index-1992-2017-vs-global-hunger-index-in-1992

# https://stats.oecd.org/

# https://ourworldindata.org/teaching

# https://www.guru99.com/r-select-filter-arrange.html