#Correlation of delayed flights per month between all years
i <- 1
MonthCorrelation <- 0
while (i <= 7){
  RowCorrelation <- cor(MonthResults[i,],t(MonthResults[1:7,]))
  MonthCorrelation <- MonthCorrelation + ((rowSums(RowCorrelation) - 1)/6)
  i <- i +1
}
MonthCorrelation <- MonthCorrelation/7
rm(MonthResults,RowCorrelation,i)