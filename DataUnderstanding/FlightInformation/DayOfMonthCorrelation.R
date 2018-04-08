#Correlation of delayed flights per day of month between all years
i <- 1
DayOfMonthCorrelation <- 0
while (i <= 7){
  RowCorrelation <- cor(DayOfMonthResults[i,],t(DayOfMonthResults[1:7,]))
  DayOfMonthCorrelation <- DayOfMonthCorrelation + ((rowSums(RowCorrelation) - 1)/6)
  i <- i +1
}
DayOfMonthCorrelation <- DayOfMonthCorrelation/7
rm(DayOfMonthResults,RowCorrelation,i)
