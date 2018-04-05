#Correlation of delayed flights per estimated elapsed time between all years
i <- 1
EstimatedElapsedTimeCorrelation <- 0
while (i <= 7){
  RowCorrelation <- cor(EstimatedElapsedTimeResults[i,],t(EstimatedElapsedTimeResults[1:7,]))
  EstimatedElapsedTimeCorrelation <- EstimatedElapsedTimeCorrelation + ((rowSums(RowCorrelation) - 1)/6)
  i <- i +1
}
EstimatedElapsedTimeCorrelation <- EstimatedElapsedTimeCorrelation/7
rm(EstimatedElapsedTimeResults,RowCorrelation,i)
