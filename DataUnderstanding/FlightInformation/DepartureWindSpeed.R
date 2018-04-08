#Percentage of delayed flights per wind speed
NoFlights <- c()
NoDelays <- c()
DelayPercentage <- c()
i <- 1
Begining <- 0
End <- 9
while (i <= 9){
  Temp <- WeatherDataset[WeatherDataset$WindSpeed > Begining,]
  Temp <- Temp[Temp$WindSpeed < End,]
  NoFlights[i] <- nrow(Temp)
  Temp <- Temp[Temp$ArrDelay >= 15,]
  NoDelays[i] <- nrow(Temp)
  DelayPercentage[i] <- as.numeric((NoDelays[i]/NoFlights[i])*100)
  i <- i + 1
  Begining <- Begining + 10
  End <- End + 10
}
DepartureWindSpeedResults <- rbind(DepartureWindSpeedResults,DelayPercentage)
rm(Begining,DelayPercentage,End,i,NoDelays,NoFlights,Temp)