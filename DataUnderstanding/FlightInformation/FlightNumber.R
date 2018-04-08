#Percentage of delayed flights per flight number
NoFlights <- c()
NoDelays <- c()
DelayPercentage <- c()
i <- 1
while (i <= length(FlightNumber)){
  Temp <- Year[Year$FlightNum == FlightNumber[i],]
  NoFlights[i] <- nrow(Temp)
  Temp <- Temp[Temp$ArrDelay >= 15,]
  NoDelays[i] <- nrow(Temp)
  DelayPercentage[i] <- as.numeric((NoDelays[i]/NoFlights[i])*100)
  i <- i + 1
}
FlightNumberResults <- rbind(FlightNumberResults,DelayPercentage)
rm(i,Temp,NoFlights,NoDelays,DelayPercentage)