#Correlation of delayed flights per carrier between all years
i <- 1
UniqueCarrierCorrelation <- 0
while (i <= 7){
  RowCorrelation <- cor(UniqueCarrierResults[i,],t(UniqueCarrierResults[1:7,]))
  UniqueCarrierCorrelation <- UniqueCarrierCorrelation + ((rowSums(RowCorrelation) - 1)/6)
  i <- i +1
}
UniqueCarrierCorrelation <- UniqueCarrierCorrelation/7
rm(UniqueCarrierResults,RowCorrelation,i)