#Correlation of delayed flights per route between all years
i <- 1
RouteCorrelation <- 0
while (i <= 7){
  RowCorrelation <- cor(RouteResults[i,],t(RouteResults[1:7,]))
  RouteCorrelation <- RouteCorrelation + ((rowSums(RowCorrelation) - 1)/6)
  i <- i +1
}
RouteCorrelation <- RouteCorrelation/7
rm(RouteResults,RowCorrelation,i)
