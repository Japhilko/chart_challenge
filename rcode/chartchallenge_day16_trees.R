#30DaysChartChallenge 
# Jan-Philipp Kolb
# Tue Apr 13 21:50:03 2021
# relationships - trees


main_path <- "C:/github/chart_challenge/"
chart_path <- paste0(main_path,"charts")


# trees in Berlin



library(tmaptools)
library(osmplotr)

cit <- "Berlin"


main_path <- "C:/github/chart_challenge/"
chart_path <- paste0(main_path,"charts/")


gc <- geocode_OSM(cit)
bbox <- get_bbox (gc$bbox)
dat_osm <- extract_osm_objects (key="natural",value="tree", bbox = bbox)
dat_streets <- extract_osm_objects (key="highway", bbox = bbox)


map <- osm_basemap(bbox = bbox, bg = c("black"))
map <- add_osm_objects(map, dat_osm, col = c("#006400"))
map <- add_osm_objects(map, dat_streets, col = "purple")


png(paste0(chart_path,"chart_challenge14_space.png"))
print_osm_map(map)
dev.off()


# Save the data -----------------------------------------------------------


