#Percentage of delayed flights per route
NoFlights <- c()
NoDelays <- c()
DelayPercentage <- c()
i <- 1
Year$Route <- paste(Year$Origin,Year$Dest)
while (i <= length(Route)){
  Temp <- Year[Year$Route == Route[i],]
  NoFlights[i] <- nrow(Temp)
  Temp <- Temp[Temp$ArrDelay >= 15,]
  NoDelays[i] <- nrow(Temp)
  DelayPercentage[i] <- as.numeric((NoDelays[i]/NoFlights[i])*100)
  i <- i + 1
}
RouteResults <- rbind(RouteResults,DelayPercentage)
rm(i,Temp,NoFlights,NoDelays,DelayPercentage)