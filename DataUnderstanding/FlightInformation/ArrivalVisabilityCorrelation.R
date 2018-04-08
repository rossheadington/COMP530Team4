#Correlation of delayed flights per day of week between all years
i <- 1
ArrivalVisabilityCorrelation <- 0
while (i <= 7){
  RowCorrelation <- cor(ArrivalVisabilityResults[i,],t(ArrivalVisabilityResults[1:7,]))
  ArrivalVisabilityCorrelation <- ArrivalVisabilityCorrelation + ((rowSums(RowCorrelation) - 1)/6)
  i <- i +1
}
ArrivalVisabilityCorrelation <- ArrivalVisabilityCorrelation/7
rm(ArrivalVisabilityResults,RowCorrelation,i)