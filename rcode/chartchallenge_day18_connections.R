#30DaysChartChallenge 
# Jan-Philipp Kolb
# Sun Apr 18 22:22:10 2021
# relationships - connections



# Metro Linien und Stationen von Paris



library(tmaptools)
library(osmplotr)

cit <- "Paris"


main_path <- "C:/github/chart_challenge/"
chart_path <- paste0(main_path,"charts/")


gc <- geocode_OSM(cit)
bbox <- get_bbox (gc$bbox)
dat_osm <- extract_osm_objects (key="route",value="subway", bbox = bbox)

map <- osm_basemap(bbox = bbox, bg = c("black"))
map <- add_osm_objects(map, obj=dat_osm$line, col = "purple")


png(paste0(chart_path,"chart_challenge18_connections.png"))
qtm(dat_osm,"short_name")
dev.off()

# Day 17 of the #30DayChartChallenge: connections. Metro connections of #Paris. Data from #Openstreetmap. https://github.com/Japhilko/chart_challenge #rstats 


save(dat_osm,file="C:/Arbeit/data/metro_Paris.RData")
