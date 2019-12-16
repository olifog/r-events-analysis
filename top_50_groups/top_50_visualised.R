library(wesanderson)

dat <- readRDS("events_past_year.rds")

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

par(mar=c(15,3,1,0))
x <- barplot(counts, xaxt="n", main="R events hosted by the top 50 groups", ylab="Events", col=wes_palette(n=4, name="GrandBudapest1"))
labs <- paste(names(counts))
text(cex=0.75, x=x, y=-0.75, labs, xpd=TRUE, srt=70, adj=1)
