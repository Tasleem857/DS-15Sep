airquality<-datasets::airquality

#top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)

airquality[,c(1,3)]
df<-airquality[,-5]#to drop the column

summary(airquality)#descriptive stats
airquality$Temp

#summary of data
summary(airquality[,2])#for 2nd column
summary(airquality$Solar.R)

###############
plot(airquality$Temp)
plot(airquality$Temp,airquality$Solar.R,type='p')
plot(airquality)

#points and lines
plot(airquality$Ozone,type='l')#l:lines
plot(airquality$Ozone,xlab = 'ozone levels',ylab = 'ozone concentration of instances',col='red')

#Horizontal bar plot
barplot(airquality$Wind,main='wind concentration in air',ylab ='wind level',col='red',horiz=T,axes=T)

#Histogram
hist(airquality$Wind)
hist(airquality$Temp,
     main='solar radiation values in air',
     xlab='solar rad',col='red')

#single box plot
boxplot(airquality$Wind,main='boxplot')

#multiple box plots
boxplot(airquality[,1:3],main='multiple')

#mfrow-no of rows and columns
#mar-margin of grid
#bty-box around the plot
#las-1 for horizontal,las-0 for vertical

par(mfrow=c(3,3),mar=c(2,4,2,1),las=0,bty='o')


plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Wind)
plot(airquality$Ozone,type='l')

install.packages('moments')
library(moments)

mean(airquality$Wind,na.rm=T)
median(airquality$Wind,na.rm=T)

var(airquality$Wind,na.rm=T)
sd(airquality$Wind,na.rm=T)

skewness(airquality$Wind,na.rm=T)
kurtosis(airquality$Wind,na.rm=T)

skewness(airquality,na.rm=T)


