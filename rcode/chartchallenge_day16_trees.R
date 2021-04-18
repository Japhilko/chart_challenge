#30DaysChartChallenge 
# Jan-Philipp Kolb
# Tue Apr 13 21:50:03 2021
# relationships - trees


main_path <- "C:/github/chart_challenge/"
chart_path <- paste0(main_path,"charts/")


# trees in Berlin



library(tmaptools)
library(osmplotr)

cit <- "Mannheim"


main_path <- "C:/github/chart_challenge/"
chart_path <- paste0(main_path,"charts/")


gc <- geocode_OSM(cit)
bbox <- get_bbox (gc$bbox)
dat_osm <- extract_osm_objects (key="natural",value="tree", bbox = bbox)
dat_streets <- extract_osm_objects (key="highway", bbox = bbox)


map <- osm_basemap(bbox = bbox, bg = c("black"))

map <- add_osm_objects(map, dat_streets, col = rgb(0,0,1,.1))
map <- add_osm_objects(map, dat_osm, col = c("#006400"))

png(paste0(chart_path,"chart_challenge16_trees.png"))
print_osm_map(map)
dev.off()

# Day 16 of the #30DayChartChallenge: trees.  I have the trees in Mannheim and I used #openstreetmap key=natural, value=tree and the #rstats packages tmaptools and osmplotr for this. 


# Save the data -----------------------------------------------------------

save(dat_osm, file=paste0("C:/Arbeit/data/trees_Mannheim.RData"))
save(dat_streets, file=paste0("C:/Arbeit/data/streets_Mannheim.RData"))
