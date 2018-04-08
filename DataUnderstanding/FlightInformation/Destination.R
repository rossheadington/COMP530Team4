#Percentage of delayed flights per destination airport
NoFlights <- c()
NoDelays <- c()
DelayPercentage <- c()
i <- 1
while (i <= length(Destination)){
  Temp <- Year[Year$Dest == Destination[i],]
  NoFlights[i] <- nrow(Temp)
  Temp <- Temp[Temp$ArrDelay >= 15,]
  NoDelays[i] <- nrow(Temp)
  DelayPercentage[i] <- as.numeric((NoDelays[i]/NoFlights[i])*100)
  i <- i + 1
}
DestinationResults <- rbind(DestinationResults,DelayPercentage)
rm(i,Temp,NoFlights,NoDelays,DelayPercentage)