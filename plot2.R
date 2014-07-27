NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#2. Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") 
#   from 1999 to 2008? Use the base plotting system to make a plot answering this question.

agg <- aggregate(Emissions ~ year, data=NEI[NEI$fips=="24510", ], FUN=sum)
png(file="plot2.png")
with(agg, plot(year, Emissions, main= "Baltimore Emissions Year over Year", pch=20))
dev.off()