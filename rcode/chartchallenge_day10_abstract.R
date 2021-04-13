#30DaysChartChallenge 
# Jan-Philipp Kolb
# Sat Apr 10 12:12:02 2021
# Day10 - distributions - abstract


library(VGAM)
library(BMT)


main_path <- "C:/github/chart_challenge/"
chart_path <- paste0(main_path,"charts/")


F1 <- pBMT(z, 0.25, 0.75, "t w")
F2 <- pBMT(z, 0.4, 0.6, "t w")

plot(F1,F2)

library("zoo")
library("tsbugs")
# create irregular multiple time series object
th.mcmc2 <- zoo(th.mcmc, order.by = svpdx$date) #$
# plot
fan0(data = th.mcmc2, type = "interval", ln = c(0.5, 0.8, 0.95),
     llab = TRUE, rcex = 0.6)


set.seed(1324)
dat <- data.frame(cond = factor(rep(c("Weibull","Normal"), each=200)), 
                  rating = c(rweibull(200, shape=1,scale = 1),rnorm(200, mean=.8)))

# Overlaid histograms
ggplot(dat, aes(x=rating, fill=cond)) +
  geom_histogram(binwidth=.5, alpha=.5, position="identity")

# Interleaved histograms
ggplot(dat, aes(x=rating, fill=cond)) +
  geom_histogram(binwidth=.5, position="dodge")

# Density plots
ggplot(dat, aes(x=rating, colour=cond)) + geom_density()



# Density plots with semi-transparent fill
png(paste0(chart_path,"chart_challenge10_abstractdist.png"))
  ggplot(dat, aes(x=rating, fill=cond)) + geom_density(alpha=.3)
dev.off()

# My contribution to day 10 of the #30DayChartChallenge - abstract distribution. I used #rstats.
