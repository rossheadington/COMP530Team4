#Load in all the data
x2000 <- read.csv("2000.csv")
x2001 <- read.csv("2001.csv")
x2002 <- read.csv("2002.csv")
x2003 <- read.csv("2003.csv")
x2004 <- read.csv("2004.csv")
x2005 <- read.csv("2005.csv")
x2006 <- read.csv("2006.csv")

#Create dataframes to hold results
MonthResults <- c()
DayOfMonthResults <- c()
DayOfWeekResults <- c()
UniqueCarrierResults <- c()
FlightNumberResults <- c()
TailNumberResults <- c()
EstimatedElapsedTimeResults <- c()
OriginResults <- c()
DestinationResults <- c()
RouteResults <- c()
DistanceResults <- c()

#Form arrays with the unique values for variouse columns
UniqueCarrier <- as.character(unique(x2000$UniqueCarrier))
FlightNumber <- as.numeric(unique(x2000$FlightNum))
TailNumber <- as.character(unique(x2000$TailNum))
Origin <- as.character(unique(x2000$Origin))
Destination <- as.character(unique(x2000$Dest))
x2000$Route <- paste(x2000$Origin,x2000$Dest)
Route <- as.character(unique(x2000$Route))

#Calculate the percentages of delays
Year <- x2000
  source("Month.R")
  source("DayOfMonth.R")
  source("DayOfWeek.R")
  source("UniqueCarrier.R")
  source("FlightNumber.R")
  source("TailNumber.R")
  source("EstimatedElapsedTime.R")
  source("Origin.R")
  source("Destination.R")
  source("Route.R")
  source("Distance.R")
Year <- x2001
  source("Month.R")
  source("DayOfMonth.R")
  source("DayOfWeek.R")
  source("UniqueCarrier.R")
  source("FlightNumber.R")
  source("TailNumber.R")
  source("EstimatedElapsedTime.R")
  source("Origin.R")
  source("Destination.R")
  source("Route.R")
  source("Distance.R")
Year <- x2002
  source("Month.R")
  source("DayOfMonth.R")
  source("DayOfWeek.R")
  source("UniqueCarrier.R")
  source("FlightNumber.R")
  source("TailNumber.R")
  source("EstimatedElapsedTime.R")
  source("Origin.R")
  source("Destination.R")
  source("Route.R")
  source("Distance.R")
Year <- x2003
  source("Month.R")
  source("DayOfMonth.R")
  source("DayOfWeek.R")
  source("UniqueCarrier.R")
  source("FlightNumber.R")
  source("TailNumber.R")
  source("EstimatedElapsedTime.R")
  source("Origin.R")
  source("Destination.R")
  source("Route.R")
  source("Distance.R")
Year <- x2004
  source("Month.R")
  source("DayOfMonth.R")
  source("DayOfWeek.R")
  source("UniqueCarrier.R")
  source("FlightNumber.R")
  source("TailNumber.R")
  source("EstimatedElapsedTime.R")
  source("Origin.R")
  source("Destination.R")
  source("Route.R")
  source("Distance.R")
Year <- x2005
  source("Month.R")
  source("DayOfMonth.R")
  source("DayOfWeek.R")
  source("UniqueCarrier.R")
  source("FlightNumber.R")
  source("TailNumber.R")
  source("EstimatedElapsedTime.R")
  source("Origin.R")
  source("Destination.R")
  source("Route.R")
  source("Distance.R")
Year <- x2006
  source("Month.R")
  source("DayOfMonth.R")
  source("DayOfWeek.R")
  source("UniqueCarrier.R")
  source("FlightNumber.R")
  source("TailNumber.R")
  source("EstimatedElapsedTime.R")
  source("Origin.R")
  source("Destination.R")
  source("Route.R")
  source("Distance.R")

#Remove any colums containing NAs
UniqueCarrierResults <- UniqueCarrierResults[,colSums(is.na(UniqueCarrierResults)) == 0] 
FlightNumberResults <- FlightNumberResults[,colSums(is.na(FlightNumberResults)) == 0] 
TailNumberResults <- TailNumberResults[,colSums(is.na(TailNumberResults)) == 0] 
EstimatedElapsedTimeResults <- EstimatedElapsedTimeResults[,colSums(is.na(EstimatedElapsedTimeResults)) == 0] 
OriginResults <- OriginResults[,colSums(is.na(OriginResults)) == 0]
DestinationResults <- DestinationResults[,colSums(is.na(DestinationResults)) == 0]
RouteResults <- RouteResults[,colSums(is.na(RouteResults)) == 0]
DistanceResults <- DistanceResults[,colSums(is.na(DistanceResults)) == 0]
rm(UniqueCarrier,FlightNumber,TailNumber,Origin,Destination,Route)

#Caluculate the correlartion for each hypothesis
source("MonthCorrelation.R")
source("DayOfMonthCorrelation.R")
source("DayOfWeekCorrelation.R")
source("UniqueCarrierCorrelation.R")
source("FlightNumberCorrelation.R")
source("TailNumberCorrelation.R")
source("EstimatedElapsedTimeCorrelation.R")
source("OriginCorrelation.R")
source("DestinationCorrelation.R")
source("RouteCorrelation.R")
source("DistanceCorrelation.R")










