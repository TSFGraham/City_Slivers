library(mapview)
library(dplyr)
library(sf)
library(sp)
library(leaflet)
library(leafpop)
library(leafem)
library(raster)
library(rgdal)
library(readr)
library(usethis)

CitySlivers<-st_read("C:/Users/Nicholas Graham/Desktop/City_Slivers/City_Sliver.shp")
NC_Parcels<-st_read("C:/Users/Nicholas Graham/Desktop/City_Slivers/NC_Parcels.shp")


Map1<-mapview(CitySlivers, layer.name = "City Slivers", lwd = 1.5, zcol = "TreatStat", label="Name") 
Map1
Map2<- Map1+mapview(NC_Parcels, layer.name = "Nevada City Owned Parcels", col.regions = "White", Fill=NA, lwd = 1.5, alpha.regions = .2, label="APN")
Map2
