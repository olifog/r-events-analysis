dat <- readRDS("../events_past_year.rds")

counts <- c()

for (x in c(1:4302)) {
  group <- dat[x,]$group_name
  
  if (is.na(group)) {
    next
  }
  
  if (group %in% names(counts)) {
    counts[group] <- counts[group] + 1
  } else {
    counts[group] <- 1
  }
  
}

counts <- counts[order(unlist(counts),decreasing=TRUE)][1:50]

saveRDS(counts, file = "group_top50.rds")