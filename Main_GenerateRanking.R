
library(dplyr)
source("Utils.R")
dataPointsFor1Quarter = 262/4 #minus weekends
quarters <- list(1,2,3,4,6,8,12,20) # months
productName="S&P100" # or S&P500
nameOfTheFileWithStockData = "S&P100TimeIndex.csv"


dataSet <- read.csv(nameOfTheFileWithStockData, sep = ",", header = TRUE)

dataSet <- as.data.frame(dataSet)

for(quarter in quarters)
{
   generateRanking(dataSet, quarter, dataPointsFor1Quarter, fileNameRanking, fileNameReturns, productName)
}
#period measured in quarters


