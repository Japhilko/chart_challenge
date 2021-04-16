#30DaysChartChallenge 

# distributions - statistics

# Andrew Ellis

# Boris Mayer

main_path <- "C:/github/chart_challenge/"
chart_path <- paste0(main_path,"charts")



library(tidyverse)
p <- data_frame(x = c(0, 25)) %>% 
  ggplot(aes(x = x)) 

png(paste0(chart_path,"chart_challenge9_statistics.png"))
p + stat_function(fun = dchisq, args = list(df = 2), color = c("#CD6600"), size = 1.5) +
  stat_function(fun = dchisq, args = list(df = 4), color = c("#32CD32"), size = 1.5) +
  stat_function(fun = dchisq, args = list(df = 8), color = "blue", size = 1.5, alpha = 0.7) +
  stat_function(fun = dchisq, args = list(df = 14), color = "red", size = 1.5, alpha = 0.7) +
  ggtitle("Chi-Square Distributions with dfs = 2, 4, 8, and 14") +
  xlab("x") +
  ylab("dchisq(x, c(2, 4, 8, 14))") +
  theme_classic()
dev.off()
#30DayChartChallenge - distributions - statics - I used #rstats package tidyverse. The code is from https://methodenlehre.github.io/SGSCLM-R-course/. My code for the chart challenge is on https://github.com/Japhilko/chart_challenge