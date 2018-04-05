#Correlation of delayed flights per day of week between all years
i <- 1
DayOfWeekCorrelation <- 0
while (i <= 7){
  RowCorrelation <- cor(DayOfWeekResults[i,],t(DayOfWeekResults[1:7,]))
  DayOfWeekCorrelation <- DayOfWeekCorrelation + ((rowSums(RowCorrelation) - 1)/6)
  i <- i +1
}
DayOfWeekCorrelation <- DayOfWeekCorrelation/7
rm(DayOfWeekResults,RowCorrelation,i)