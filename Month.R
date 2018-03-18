NoFlights <- c()
NoDelays <- c()
DelayPercentage <- c()
i <- 1
while (i <= 12){
  Temp <- Year[Year$Month == i,]
  NoFlights[i] <- nrow(Temp)
  Temp <- Temp[Temp$ArrDelay >= 15,]
  NoDelays[i] <- nrow(Temp)
  DelayPercentage[i] <- as.numeric((NoDelays[i]/NoFlights[i])*100)
  i <- i + 1
}
MonthResults <- rbind(MonthResults,DelayPercentage)
rm(i,Temp,NoFlights,NoDelays,DelayPercentage)