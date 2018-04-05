#Correlation of delayed flights per origin between all years
i <- 1
OriginCorrelation <- 0
while (i <= 7){
  RowCorrelation <- cor(OriginResults[i,],t(OriginResults[1:7,]))
  OriginCorrelation <- OriginCorrelation + ((rowSums(RowCorrelation) - 1)/6)
  i <- i +1
}
OriginCorrelation <- OriginCorrelation/7
rm(OriginResults,RowCorrelation,i)
