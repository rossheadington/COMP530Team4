#Correlation of delayed flights per day of week between all years
i <- 1
DepartureTemperatureCorrelation <- 0
while (i <= 7){
  RowCorrelation <- cor(DepartureTemperatureResults[i,],t(DepartureTemperatureResults[1:7,]))
  DepartureTemperatureCorrelation <- DepartureTemperatureCorrelation + ((rowSums(RowCorrelation) - 1)/6)
  i <- i +1
}
DepartureTemperatureCorrelation <- DepartureTemperatureCorrelation/7
rm(DepartureTemperatureResults,RowCorrelation,i)