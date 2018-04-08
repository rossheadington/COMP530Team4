#Percentage of delayed flights due to weather at arrival airport
WeatherDataset <- c()
Airports <- as.character(unique(Year$Dest))
i <- 1
#Format the Year dataframe to include posix date and time
Year$CRSArrTime <- substr(as.POSIXct(sprintf("%04.0f", Year$CRSArrTime), format='%H%M'), 12, 16)
Year$Date <- paste(Year$Year,Year$Month,Year$DayofMonth, sep = "-")
Year$DateTime <- as.POSIXct(paste(as.character(Year$Date),as.character(Year$CRSArrTime)), format="%Y-%m-%d %H:%M")
#While loop to go get the data for each airport
while (i <= length(Airports)){
  #Download weather data
  Temp <- Year[Year$Dest == Airports[i],]
  URL <- paste("https://mesonet.agron.iastate.edu/cgi-bin/request/asos.py?station=",Airports[i],"&data=all&year1=",Dataset,"&month1=1&day1=1&year2=",Dataset,"&month2=12&day2=31&tz=Etc%2FUTC&format=onlycomma&latlon=no&direct=no&report_type=1&report_type=2", sep = "")
  Weather <- read.csv(textConnection(getURL(URL)))
  Weather$valid <- as.POSIXct(as.character(Weather$valid),format="%Y-%m-%d %H:%M")
  Weather <- Weather[!duplicated(Weather$valid),]
  Weather <- Weather[Weather$tmpf != "M",]
  Weather <- Weather[Weather$vsby != "M",]
  Weather <- Weather[Weather$sknt != "M",]
  Weather$tmpf <- as.numeric(Weather$tmpf)
  Weather$vsby <- as.numeric(Weather$vsby)
  Weather$sknt <- as.numeric(Weather$sknt)
  #Temperature
  ind <- cut(Temp$DateTime, Weather$valid, labels = FALSE)
  ind <- ind + (abs(Weather$valid[ind] - Temp$DateTime) > abs(Weather$valid[1+ind] - Temp$DateTime))
  is_recoverable <- is.na(ind) & abs(Temp$DateTime - max(Weather$valid)) < 60*60*6
  ind[is_recoverable] <- nrow(Weather)
  Temp$Temperature <- Weather$tmpf[ind]
  #Visability
  ind <- cut(Temp$DateTime, Weather$valid, labels = FALSE)
  ind <- ind + (abs(Weather$valid[ind] - Temp$DateTime) > abs(Weather$valid[1+ind] - Temp$DateTime))
  is_recoverable <- is.na(ind) & abs(Temp$DateTime - max(Weather$valid)) < 60*60*6
  ind[is_recoverable] <- nrow(Weather)
  Temp$Visability <- Weather$vsby[ind]
  #Wind Speed
  ind <- cut(Temp$DateTime, Weather$valid, labels = FALSE)
  ind <- ind + (abs(Weather$valid[ind] - Temp$DateTime) > abs(Weather$valid[1+ind] - Temp$DateTime))
  is_recoverable <- is.na(ind) & abs(Temp$DateTime - max(Weather$valid)) < 60*60*6
  ind[is_recoverable] <- nrow(Weather)
  Temp$WindSpeed <- Weather$sknt[ind]
  #Bind the datasets together
  WeatherDataset <- rbind(WeatherDataset,Temp)
  i <- i + 1
}
rm(Airports,i,Weather,ind,is_recoverable,URL,Temp)
Dataset <- Dataset + 1
source("ArrivalTemperature.R")
source("ArrivalVisability.R")
source("ArrivalWindSpeed.R")