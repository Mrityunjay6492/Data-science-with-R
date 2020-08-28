# Method 1:General Barplot for list

v<-c(0.4,0.75,0.2,0.6,0.5)
barplot(v)
barplot(v,col="#1b98e0")
barplot(v,col="blue",horiz=TRUE)
g<-LETTERS[1:5]
barplot(v,col="blue",horiz=TRUE,names.arg=g)


# Barplot for data frame

f<-as.matrix(data.frame(A=c(0.2,0.4),
              B=c(0.3,0.1),
              C=c(0.7,0.1),
              D=c(0.1,0.2),
              E=c(0.3,0.3)
              ))

rownames(f)<-c("Group1","Group2")
barplot(f,col=c("blue","black"))
legend("topright",legend=c("Group 1","Group 2"),fill=c("blue","black"))
barplot(f,col=c("red","yellow"),beside=TRUE)
legend("topright",legend=c("Group1","Group2"),fill=c("red","yellow"))

# Barplot using ggplot2 packages

#install.packages("ggplot2") #once installed do not execute again
library(ggplot2)

x<-data.frame(g,v)
ggplot(x,aes(x=g, y=v),)+geom_bar(stat="identity")
  




