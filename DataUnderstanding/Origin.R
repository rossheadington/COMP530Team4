#Percentage of delayed flights per origin
NoFlights <- c()
NoDelays <- c()
DelayPercentage <- c()
i <- 1
while (i <= length(Origin)){
  Temp <- Year[Year$Origin == Origin[i],]
  NoFlights[i] <- nrow(Temp)
  Temp <- Temp[Temp$ArrDelay >= 15,]
  NoDelays[i] <- nrow(Temp)
  DelayPercentage[i] <- as.numeric((NoDelays[i]/NoFlights[i])*100)
  i <- i + 1
}
OriginResults <- rbind(OriginResults,DelayPercentage)
rm(i,Temp,NoFlights,NoDelays,DelayPercentage)