#Correlation of delayed flights per day of week between all years
i <- 1
DepartureWindSpeedCorrelation <- 0
while (i <= 7){
  RowCorrelation <- cor(DepartureWindSpeedResults[i,],t(DepartureWindSpeedResults[1:7,]))
  DepartureWindSpeedCorrelation <- DepartureWindSpeedCorrelation + ((rowSums(RowCorrelation) - 1)/6)
  i <- i +1
}
DepartureWindSpeedCorrelation <- DepartureWindSpeedCorrelation/7
rm(DepartureWindSpeedResults,RowCorrelation,i)