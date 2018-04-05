#Percentage of delayed flights per day of week
NoFlights <- c()
NoDelays <- c()
DelayPercentage <- c()
i <- 1
while (i <= 7){
  Temp <- Year[Year$DayOfWeek == i,]
  NoFlights[i] <- nrow(Temp)
  Temp <- Temp[Temp$ArrDelay >= 15,]
  NoDelays[i] <- nrow(Temp)
  DelayPercentage[i] <- as.numeric((NoDelays[i]/NoFlights[i])*100)
  i <- i + 1
}
DayOfWeekResults <- rbind(DayOfWeekResults,DelayPercentage)
rm(i,Temp,NoFlights,NoDelays,DelayPercentage)