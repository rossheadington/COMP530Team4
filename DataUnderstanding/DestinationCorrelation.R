#Correlation of delayed flights per destination between all years
i <- 1
DestinationCorrelation <- 0
while (i <= 7){
  RowCorrelation <- cor(DestinationResults[i,],t(DestinationResults[1:7,]))
  DestinationCorrelation <- DestinationCorrelation + ((rowSums(RowCorrelation) - 1)/6)
  i <- i +1
}
DestinationCorrelation <- DestinationCorrelation/7
rm(DestinationResults,RowCorrelation,i)
