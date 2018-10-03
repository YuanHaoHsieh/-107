library(ggplot2)

avocado<- read.csv("week_3/avocado.csv")

avocadoalbany<- avocado[grep("Albany", avocado$region),]

avocadoalbanybig<- avocadoalbany[which(avocadoalbany$Total.Volume < 25000),]

avocadoatlanta<- avocado[grep("Atlanta", avocado$region),]

avocadoatlantabig<- avocadoatlanta[which(avocadoatlanta$Total.Volume < 25000),]

mixeddata<- rbind(avocadoalbanybig, avocadoatlantabig)

mixeddatax<- rbind(avocadoalbany, avocadoatlanta)

ggplot(data = mixeddata, aes(x = AveragePrice)) + geom_bar(aes(fill = region), binwidth = 0.05)

ggplot(data = mixeddata, aes(x = AveragePrice, y = Total.Volume, color = region)) + geom_point() + geom_smooth(method = 'lm')

ggplot(data = mixeddata, aes(x = Total.Volume, y = Total.Bags, color = region)) + geom_point() + geom_smooth(method = 'lm')

ggplot(data = mixeddata, aes(x = as.Date(Date), y = Total.Volume, group = region, color = region)) + geom_line() 

ggplot(data = mixeddatax, aes(x = as.Date(Date), y = Total.Volume, group = region, color = region)) + geom_point() 
