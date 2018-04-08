#Correlation of delayed flights per day of week between all years
i <- 1
ArrivalTemperatureCorrelation <- 0
while (i <= 7){
  RowCorrelation <- cor(ArrivalTemperatureResults[i,],t(ArrivalTemperatureResults[1:7,]))
  ArrivalTemperatureCorrelation <- ArrivalTemperatureCorrelation + ((rowSums(RowCorrelation) - 1)/6)
  i <- i +1
}
ArrivalTemperatureCorrelation <- ArrivalTemperatureCorrelation/7
rm(ArrivalTemperatureResults,RowCorrelation,i)