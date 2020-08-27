Equakes<-datasets::quakes
summary(Equakes)


#Histogram
par(mfrow=c(3,2),las=0,mgp=c(3,1,0))
t=c("LATITUDE","LONGITUDE","DEPTH","MAGNITUDE","STATION")
for(i in 1:5)
hist(Equakes[,i],main="Histogram",xlab=t[i],bty="O",density = 25)


#Barplots
par(mfrow=c(3,2),las=0,mgp=c(3,1,0))
for(i in 1:5)
barplot(Equakes[,i],xlab=t[i],ylab="INTENSITY", main="Barplots",)


#Boxplot
boxplot(Equakes[,c(1:5)],names=t,notch=TRUE,col='Blue',axes=TRUE)
  

#plot
plot(Equakes)


#Skewness, kurtosis, variance and standard deviation
skewness(Equakes)
kurtosis(Equakes)
stat.desc(Equakes)#standard deviation and variance is d

           