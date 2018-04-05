#Percentage of delayed flights per distance
NoFlights <- c()
NoDelays <- c()
DelayPercentage <- c()
i <- 1
Begining <- 1
End <- 250
while (i <= 20){
  Temp <- Year[Year$Distance > Begining,]
  Temp <- Temp[Temp$Distance < End,]
  Temp <- Temp[!is.na(Temp$Distance),]
  NoFlights[i] <- nrow(Temp)
  Temp <- Temp[Temp$ArrDelay >= 15,]
  NoDelays[i] <- nrow(Temp)
  DelayPercentage[i] <- as.numeric((NoDelays[i]/NoFlights[i])*100)
  i <- i + 1
  Begining <- Begining + 250
  End <- End + 250
}
DistanceResults <- rbind(DistanceResults,DelayPercentage)
rm(Begining,DelayPercentage,End,i,NoDelays,NoFlights,Temp)

