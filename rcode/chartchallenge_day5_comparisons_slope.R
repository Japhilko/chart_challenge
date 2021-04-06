#30DaysChartChallenge 
# Jan-Philipp Kolb
# Day5 - comparisons - slope

#https://twitter.com/30DayChartChall/status/1370041826976104451/photo/1

main_path <- "C:/github/chart_challenge/"
chart_path <- paste0(main_path,"charts/")



# Multilevel Model


# Load packages -----------------------------------------------------------


library(ggplot2)
library(lme4)
library(visreg)

set.seed(321)
groups <- floor(runif(1000, min=1, max=7))
sex <- rep(c("Male", "Female"), times= 500)
value1 <- runif(1000, min=1, max=10)
value2 <- runif(1000, min=1, max=100)
value3 <- runif(1000, min=1, max=200)
response <- runif(1000, min=1, max=100)

df <- data.frame(groups, sex, response, value1, value2, value3)

model <- lmer(scale(response) ~ scale(value1) + scale(value2) + scale(value3) + factor(sex) + (1|groups), data=df)

visreg(model
       , "value1" # Variable to plot
       , cond = list(value2 = 0, value3 = 0, sex = "Female") # Values of the other variables in the model
       , gg = TRUE # Use ggplot2 for plotting?
)


data(airquality)

airquality$Heat <- cut(airquality$Temp, 3, labels=c("Cool", "Mild", "Hot"))
fit <- lm(Ozone ~ Solar.R + Wind * Heat, data=airquality)


visreg(fit, "Heat", by="Wind")


setwd(chart_path)
png("chart_challenge5_visreg.png")
visreg(fit, "Wind", by="Heat", overlay=TRUE, partial=FALSE)
dev.off()

# Day 5 of #30DayChartChallenge. The topic today is slope. I used one of my favorite #rstats packages for visualizing regression results, the visreg package. Thanks to Patrick Breheny and Woodrow Burchett

# Links -------------------------------------------------------------------


# https://stats.stackexchange.com/questions/33013/what-test-can-i-use-to-compare-slopes-from-two-or-more-regression-models


# https://cran.r-project.org/web/packages/visreg/vignettes/quick-start.html

# https://stats.stackexchange.com/questions/271136/plotting-multilevel-multiple-regression

# https://journal.r-project.org/archive/2017/RJ-2017-046/RJ-2017-046.pdf