#30DaysChartChallenge 
# Jan-Philipp Kolb
# Day1 - comparison - pictogram


# install.packages(c("waffle", "extrafont"))
library(waffle)
library(extrafont)


waffle(c(50, 30, 15, 5), rows = 5, title = "Your basic waffle chart")


data_path <- "C:/Arbeit/data/" 

cdat <- read.csv(paste0(data_path,"owid-covid-data.csv"))



# Another example ---------------------------------------------------------



library(waffle)
library(extrafont)
parts <- c(`Un-breachednUS Population`=(318-11-79), `Premera`=11, `Anthem`=79)
waffle(parts/10, rows=3, colors=c("#969696", "#1879bf", "#009bda"),
       use_glyph="medkit", size=8)

# https://cran.r-project.org/web/packages/waffle/index.html

#install.packages("waffle")
#install.packages("hrbrthemes")
library(hrbrthemes)
library(waffle)
library(ggplot2)
library(dplyr)

three_states <- sample(state.name, 3)

data.frame(
  states = factor(rep(three_states, 3), levels = three_states),
  vals = c(10, 20, 30, 6, 14, 40, 30, 20, 10),
  col = rep(c("blue", "black", "red"), 3),
  fct = c(rep("Thing 1", 3), rep("Thing 2", 3), rep("Thing 3", 3))
) -> xdf

xdf

xdf %>%
  count(states, wt = vals) %>%
  ggplot(aes(fill = states, values = n)) +
  expand_limits(x=c(0,0), y=c(0,0)) +
  coord_equal() +
  labs(fill = NULL, colour = NULL) +
  theme_ipsum_rc(grid="") +
  theme_enhance_waffle() -> waf


# try it with python ------------------------------------------------------




# Links -------------------------------------------------------------------

# https://www.r-bloggers.com/2013/07/easy-pictograms-using-r/

# https://rud.is/b/2019/07/12/quick-hit-waffle-1-0-font-awesome-5-pictograms-and-more/

# https://github.com/robertgrant/pictogram

# https://www.r-bloggers.com/2017/09/infographic-style-charts-using-the-r-waffle-package/

# https://stackoverflow.com/questions/25014492/geom-bar-pictograms-how-to

# https://www.r-bloggers.com/2015/03/pre-cran-waffle-update-isotype-pictograms/

# https://fontawesome.com/start/confirm