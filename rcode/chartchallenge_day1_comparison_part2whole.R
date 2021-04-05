#30DaysChartChallenge 
# Jan-Philipp Kolb
# Day1 - comparison - part to whole


library(treemap)
?treemap


# Define the paths --------------------------------------------------------

data_path <- "C:/Arbeit/data/" 
main_path <- "C:/github/chart_challenge/"
chart_path <- paste0(main_path,"charts/")


# setwd("C:/Arbeit/data/")

cdat <- read.csv("owid-covid-data.csv")


table(cdat$date)

# 2021-03-10

cdat1 <- cdat[cdat$date=="2021-03-10",]

cdat2 <- cdat1[substr(cdat1$iso_code,1,4)!="OWID",]

# Only Europe
# cdat1 <- cdat1[cdat1$continent=="europe",]

setwd(chart_path)
png("chart_challenge1_treemap.png")
treemap(cdat2,
        index=c("continent", "iso_code"),
        vSize="population",
        vColor="total_deaths",
        type="value",
        format.legend = list(scientific = FALSE, big.mark = " "))
dev.off()


# Looking forward to this new #30DayChartChallenge. Thanks a lot for this #DataViz Challenge by @CedScherer and @dr_xeo. I used the #rstats package treemap by @MartijnTennekes & @ellis2013nz. chart shows covid cases from @OurWorldInData


# Peter Ellis

# Example in the helpfile -------------------------------------------------

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