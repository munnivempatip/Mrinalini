BaltimoreCity <- subset(NEI, fips == "24510")

totalPM25ByYear <- tapply(BaltimoreCity$Emissions, BaltimoreCity$year, sum)

plot(names(totalPM25ByYear), totalPM25ByYear, type = "l", xlab = "Year", 
     ylab = expression("Total" ~ PM[2.5] ~ "Emissions (tons)"),
     main = expression("Total Baltimore City" ~ PM[2.5] ~ "Emissions by Year"))