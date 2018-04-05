#Correlation of delayed flights per flight number between all years
i <- 1
FlightNumberCorrelation <- 0
while (i <= 7){
  RowCorrelation <- cor(FlightNumberResults[i,],t(FlightNumberResults[1:7,]))
  FlightNumberCorrelation <- FlightNumberCorrelation + ((rowSums(RowCorrelation) - 1)/6)
  i <- i +1
}
FlightNumberCorrelation <- FlightNumberCorrelation/7
rm(FlightNumberResults,RowCorrelation,i)