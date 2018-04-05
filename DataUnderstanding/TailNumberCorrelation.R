#Correlation of delayed flights per tail number between all years
i <- 1
TailNumberCorrelation <- 0
while (i <= 7){
  RowCorrelation <- cor(TailNumberResults[i,],t(TailNumberResults[1:7,]))
  TailNumberCorrelation <- TailNumberCorrelation + ((rowSums(RowCorrelation) - 1)/6)
  i <- i +1
}
TailNumberCorrelation <- TailNumberCorrelation/7
rm(TailNumberResults,RowCorrelation,i)