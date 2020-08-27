f<- function(x)   return(x+2)
x<-c(5,7)
f(x)
Airquality<- datasets::airquality
head(airquality,10)
tail(airquality,10)
airquality[,c(1,2)]
airquality[,-2]
summary(airquality)
summary(airquality[,1])
airquality$Temp
summary(airquality$Temp)

plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type='p')
plot(airquality)
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type="p")
plot(airquality)
# points and lines 
par(mfrow=c(3,3),mar=c(2,5,2,1),las=0, bty='o',mgp=c(2,1,0))
plot(airquality$Wind, type= "b") # p: points, l: lines,b: both
plot(airquality$Ozone, ylab = 'ozone Concentration', 
     xlab = 'No of Instances', main = 'Ozone levels in NY city',
     col = 'blue')
# Horizontal bar plot
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        ylab = 'ozone levels', col= 'blue',horiz = T,axes=T)

plot(airquality$Ozone)
plot(airquality$Ozone,airquality$wind)
boxplot(airquality$Solar.R)
boxplot(airquality$Ozone)

write.csv(airquality,"C/airquality.csv")
