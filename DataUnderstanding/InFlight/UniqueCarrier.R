#Percentage of delayed flights per carrier
NoFlights <- c()
NoDelays <- c()
DelayPercentage <- c()
i <- 1
while (i <= length(UniqueCarrier)){
  Temp <- Year[Year$UniqueCarrier == UniqueCarrier[i],]
  NoFlights[i] <- nrow(Temp)
  Temp <- Temp[Temp$ArrDelay >= 15,]
  NoDelays[i] <- nrow(Temp)
  DelayPercentage[i] <- as.numeric((NoDelays[i]/NoFlights[i])*100)
  i <- i + 1
}
UniqueCarrierResults <- rbind(UniqueCarrierResults,DelayPercentage)

rm(i,Temp,NoFlights,NoDelays,DelayPercentage)

