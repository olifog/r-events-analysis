dat <- readRDS("../events_past_year.rds")

counts <- c()

for (x in c(1:4302)) {
  city <- dat[x,]$venue_city
  
  if (is.na(city)) {
    next
  }
  
  if (city %in% names(counts)) {
    counts[city] <- counts[city] + 1
  } else {
    counts[city] <- 1
  }
  
}

saveRDS(counts, file = "city_counts.rds")