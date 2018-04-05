#Correlation of delayed flights per distance between all years
i <- 1
DistanceCorrelation <- 0
while (i <= 7){
  RowCorrelation <- cor(DistanceResults[i,],t(DistanceResults[1:7,]))
  DistanceCorrelation <- DistanceCorrelation + ((rowSums(RowCorrelation) - 1)/6)
  i <- i +1
}
DistanceCorrelation <- DistanceCorrelation/7
rm(DistanceResults,RowCorrelation,i)