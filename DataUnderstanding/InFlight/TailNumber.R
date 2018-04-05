#Percentage of delayed flights per tail number
NoFlights <- c()
NoDelays <- c()
DelayPercentage <- c()
i <- 1
while (i <= length(TailNumber)){
  Temp <- Year[Year$TailNum == TailNumber[i],]
  NoFlights[i] <- nrow(Temp)
  Temp <- Temp[Temp$ArrDelay >= 15,]
  NoDelays[i] <- nrow(Temp)
  DelayPercentage[i] <- as.numeric((NoDelays[i]/NoFlights[i])*100)
  i <- i + 1
}
TailNumberResults <- rbind(TailNumberResults,DelayPercentage)
rm(i,Temp,NoFlights,NoDelays,DelayPercentage)