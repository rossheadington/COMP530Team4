#Percentage of delayed flights per estimated elapsed time
NoFlights <- c()
NoDelays <- c()
DelayPercentage <- c()
i <- 1
Begining <- 1
End <- 30
while (i <= 22){
  Temp <- Year[Year$CRSElapsedTime > Begining,]
  Temp <- Temp[Temp$CRSElapsedTime < End,]
  Temp <- Temp[!is.na(Temp$CRSElapsedTime),]
  NoFlights[i] <- nrow(Temp)
  Temp <- Temp[Temp$ArrDelay >= 15,]
  NoDelays[i] <- nrow(Temp)
  DelayPercentage[i] <- as.numeric((NoDelays[i]/NoFlights[i])*100)
  i <- i + 1
  Begining <- Begining + 30
  End <- End + 30
}
EstimatedElapsedTimeResults <- rbind(EstimatedElapsedTimeResults,DelayPercentage)
rm(Begining,DelayPercentage,End,i,NoDelays,NoFlights,Temp)

