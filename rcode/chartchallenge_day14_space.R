#30DaysChartChallenge 
# Jan-Philipp Kolb
# Tue Apr 13 21:50:03 2021
# relationships - space


library(tmaptools)
library(osmplotr)

cit <- "Berlin"


main_path <- "C:/github/chart_challenge/"
chart_path <- paste0(main_path,"charts/")


# green space in berlin

gc <- geocode_OSM(cit)
bbox <- get_bbox (gc$bbox)
dat_osm <- extract_osm_objects (key="leisure",value="park", bbox = bbox)

map <- osm_basemap(bbox = bbox, bg = c("white"))
map <- add_osm_objects(map, dat_osm, col = "green")


png(paste0(chart_path,"chart_challenge14_space.png"))
print_osm_map(map)
dev.off()

# Day 14 of the #30DayChartChallenge green space - Parks in Berlin. I used the #rstats package osmplotr and tmap for this. Thanks to @bikesRdata, @MartijnTennekes and the other contributors
#rspatial. #GeographyTeacher  

#Mark Padgham [aut, cre],
#Richard Beare [aut],
#Finkelstein Noam [ctb, cph] (Author of included stub.R code),
#Bartnik Lukasz 


# https://methodenlehre.github.io/SGSCLM-R-course/