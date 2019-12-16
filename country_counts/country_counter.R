dat <- readRDS("../events_past_year.rds")

counts <- c()

for (x in c(1:4302)) {
  country <- tolower(dat[x,]$venue_country)
  
  if (is.na(country)) {
    next
  }
  
  if (country %in% names(counts)) {
    counts[country] <- counts[country] + 1
  } else {
    counts[country] <- 1
  }
    
}
  
saveRDS(counts, file = "country_counts.rds")