NoFlights <- c()
NoDelays <- c()
DelayPercentage <- c()
i <- 1
while (i <= 31){
  Temp <- Year[Year$DayofMonth == i,]
  NoFlights[i] <- nrow(Temp)
  Temp <- Temp[Temp$ArrDelay >= 15,]
  NoDelays[i] <- nrow(Temp)
  DelayPercentage[i] <- as.numeric((NoDelays[i]/NoFlights[i])*100)
  i <- i + 1
}
DayOfMonthResults <- rbind(DayOfMonthResults,DelayPercentage)
rm(i,Temp,NoFlights,NoDelays,DelayPercentage)