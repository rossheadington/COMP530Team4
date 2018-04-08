#Correlation of delayed flights per day of week between all years
i <- 1
ArrivalWindSpeedCorrelation <- 0
while (i <= 7){
  RowCorrelation <- cor(ArrivalWindSpeedResults[i,],t(ArrivalWindSpeedResults[1:7,]))
  ArrivalWindSpeedCorrelation <- ArrivalWindSpeedCorrelation + ((rowSums(RowCorrelation) - 1)/6)
  i <- i +1
}
ArrivalWindSpeedCorrelation <- ArrivalWindSpeedCorrelation/7
rm(ArrivalWindSpeedResults,RowCorrelation,i)