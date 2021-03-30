#30DaysChartChallenge 
# Jan-Philipp Kolb
# Day1 - comparison - part to whole


library(treemap)
?treemap


# Define the paths --------------------------------------------------------

data_path <- "C:/Arbeit/data/" 

setwd("C:/Arbeit/data/")

cdat <- read.csv("owid-covid-data.csv")


data(GNI2014)



treemap(GNI2014,
        index=c("continent", "iso3"),
        vSize="population",
        vColor="GNI",
        type="value",
        format.legend = list(scientific = FALSE, big.mark = " "))


# Links -------------------------------------------------------------------

# https://www.tableau.com/about/blog/2018/11/8-ways-bring-powerful-new-comparisons-viz-audiences-set-actions-97207

# https://datavizcatalogue.com/search/part_to_a_whole.html


# https://cran.r-project.org/web/packages/treemap/index.html