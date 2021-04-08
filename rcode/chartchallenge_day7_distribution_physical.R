#30DaysChartChallenge 
# Jan-Philipp Kolb
# Day7 - distributions - physical



# https://twitter.com/30DayChartChall/status/1364963685505073163

# https://policyviz.com/2014/09/09/graphic-continuum/

#30DayChartChallenge day 7 - physical distribution. #Openstreetmap search for water in German federal state of Saarland with #rstats package osmplotr with key=natural and value=water. #rspatial

library(osmplotr)

gc <- geocode_OSM("Saarland")
bbox <- get_bbox (gc$bbox)
dat_osm <- extract_osm_objects (key="natural",value="water", bbox = bbox)

png("charts/chart_challenge7_physical.png")
qtm(dat_osm,fill = "blue",borders = "blue")
dev.off()
