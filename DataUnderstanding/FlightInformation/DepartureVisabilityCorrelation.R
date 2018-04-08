#Correlation of delayed flights per day of week between all years
i <- 1
DepartureVisabilityCorrelation <- 0
while (i <= 7){
  RowCorrelation <- cor(DepartureVisabilityResults[i,],t(DepartureVisabilityResults[1:7,]))
  DepartureVisabilityCorrelation <- DepartureVisabilityCorrelation + ((rowSums(RowCorrelation) - 1)/6)
  i <- i +1
}
DepartureVisabilityCorrelation <- DepartureVisabilityCorrelation/7
rm(DepartureVisabilityResults,RowCorrelation,i)