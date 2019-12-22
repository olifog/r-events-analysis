satrdays <- read.csv("./satrdays/satrdays.csv")

sum = summary(satrdays)

write.csv(t(as.matrix(sum)), file="./satrdays/summary.csv") 

library(leafletR)

toGeoJSON(satrdays)

# Total events: 16
# Total attendees: 180 (only 1 event had statistics)
#
# City:
# Cape Town:2
# Amsterdam:1
# Belgrade:1
# Berlin:1
# Budapest:1
# Cardiff:1
# Chicago:1
# Gdansk:1
# Johannesburg:1
# Kampala:1
# Los Angeles:1
# Newcastle upon Tyne:1
# Paris:1
# Santiago:1
# Washington:1
#
# Country:
# America:3
# South Africa:3
# Chile:1
# England:1
# France:1
# Germany:1
# Hungary:1
# Netherlands:1
# Poland:1
# Serbia:1
# Uganda:1
# Wales:1
#
# Continent:
# Europe:8
# Africa:4
# North America:3
# South America:1
