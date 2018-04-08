#Percentage of delayed flights per temperature
NoFlights <- c()
NoDelays <- c()
DelayPercentage <- c()
i <- 1
Begining <- 1
End <- 10
while (i <= 12){
  Temp <- WeatherDataset[WeatherDataset$Temperature > Begining,]
  Temp <- Temp[Temp$Temperature < End,]
  NoFlights[i] <- nrow(Temp)
  Temp <- Temp[Temp$ArrDelay >= 15,]
  NoDelays[i] <- nrow(Temp)
  DelayPercentage[i] <- as.numeric((NoDelays[i]/NoFlights[i])*100)
  i <- i + 1
  Begining <- Begining + 10
  End <- End + 10
}
DepartureTemperatureResults <- rbind(DepartureTemperatureResults,DelayPercentage)
rm(Begining,DelayPercentage,End,i,NoDelays,NoFlights,Temp)