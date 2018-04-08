#Percentage of delayed flights per visability
NoFlights <- c()
NoDelays <- c()
DelayPercentage <- c()
i <- 1
Begining <- 1
End <- 5
while (i <= 12){
  Temp <- WeatherDataset[WeatherDataset$Visability > Begining,]
  Temp <- Temp[Temp$Visability < End,]
  NoFlights[i] <- nrow(Temp)
  Temp <- Temp[Temp$ArrDelay >= 15,]
  NoDelays[i] <- nrow(Temp)
  DelayPercentage[i] <- as.numeric((NoDelays[i]/NoFlights[i])*100)
  i <- i + 1
  Begining <- Begining + 5
  End <- End + 5
}
ArrivalVisabilityResults <- rbind(ArrivalVisabilityResults,DelayPercentage)
rm(Begining,DelayPercentage,End,i,NoDelays,NoFlights,Temp)