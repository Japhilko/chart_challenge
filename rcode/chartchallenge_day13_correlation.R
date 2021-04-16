#30DaysChartChallenge 
# Jan-Philipp Kolb
# Tue Apr 13 21:50:03 2021
# relationships - correlation


main_path <- "C:/github/chart_challenge/"
chart_path <- paste0(main_path,"charts/")

library(corrr)


mydata <- mtcars[, c('mpg', 'cyl', 'disp', 'hp', 'carb')]

png(paste0(chart_path,"chart_challenge13_correlation.png"))
  mydata %>% correlate() %>% network_plot(min_cor=0.6)
dev.off()

# http://jamesmarquezportfolio.com/correlation_matrices_in_r.html

# Day 13 of the #30DayChartChallenge. The topic is correlation. I used the #rstats package corrr. Thanks to @topepos, @drsimonj, @cimentadaj  

#Max Kuhn [aut, cre],
#Simon Jackson [aut],
#Jorge Cimentada [aut]