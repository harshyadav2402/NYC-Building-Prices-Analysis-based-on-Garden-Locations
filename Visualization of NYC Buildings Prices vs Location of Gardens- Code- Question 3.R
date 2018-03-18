data1 <- read.csv("C:/Users/Harsh Yadav/Downloads/NYC_Greenthumb_Community_Gardens.csv")
data2 <- read.csv("C:/Users/Harsh Yadav/Downloads/DOF__Condominium_comparable_rental_income___Manhattan_-_FY_2010_2011.csv")

data2=data2[complete.cases(data2), ]

boxplot(data2$COMPARABLE_RENTAL_1_Market_Value_pe_SqFt)

library(tigris)
library(dplyr)
library(leaflet)
library(sp)
library(ggmap)
library(maptools)
library(broom)
library(httr)
library(rgdal)


r <- GET('http://data.beta.nyc//dataset/0ff93d2d-90ba-457c-9f7e-39e47bf2ac5f/resource/35dd04fb-81b3-479b-a074-a27a37888ce7/download/d085e2f8d0b54d4590b1e7d1f35594c1pediacitiesnycneighborhoods.geojson')
nyc_neighborhoods <- readOGR(content(r,'text'), 'OGRGeoJSON', verbose = F)

getColor <- function(data2) {
  sapply(data2$COMPARABLE_RENTAL_1_Market_Value_pe_SqFt, function(COMPARABLE_RENTAL_1_Market_Value_pe_SqFt) {
    if(COMPARABLE_RENTAL_1_Market_Value_pe_SqFt <= 150) {
      "blue"
    } else if(COMPARABLE_RENTAL_1_Market_Value_pe_SqFt <= 250) {
      "orange"
    } else {
      "red"
    } })
}

icons <- awesomeIcons(
  icon = 'ios-close',
  iconColor = 'black',
  library = 'ion',
  markerColor = getColor(data2)
)

leaflet() %>%
  addTiles() %>%
  addCircleMarkers(~Longitude, ~Latitude,radius = 7, color = 'green', data = data1) %>%
  addAwesomeMarkers(~Longitude, ~Latitude, icon=icons, data = data2)%>%
  addProviderTiles("CartoDB.Positron") %>%
  setView(-73.99, 40.733, zoom = 11)
