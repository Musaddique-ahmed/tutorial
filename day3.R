airquality <- datasets::airquality

####Top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)
######Columns

airquality[,c(1,2)]
df<-airquality[,-6]
summary(airquality) #discriptive stats
airquality$Wind
airquality$Temp

###########Summary of the data#########
summary(airquality[,1]) # for 1st column
summary(airquality$Ozone)
summary(airquality)
summary(airquality$Wind)
summary(airquality$Month)

#plots
################


plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type="p")
plot(airquality)
# points and lines 
plot(airquality$Wind, type= "l") # p: points, l: lines,b: both
plot(airquality$Wind, xlab = 'No of Instances', 
     ylab = 'wind values', main = 'wind levels in NY city',
     col = 'blue')
plot(airquality$Temp, type='b',col='brown')


# Horizontal bar plot
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        ylab = 'ozone levels', col= 'blue',horiz = T,axes=T)


#Histogram
hist(airquality$Temp, col="pink")
hist(airquality$Temp, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', col='orange')
hist(airquality$Temp, main='Temperature values in air', xlab = 'temperature readings', col='pink')

#Single box plot
boxplot(airquality$Temp,main="Boxplot")

# Multiple box plots
boxplot(airquality[,1:4],main='Multiple')
boxplot(airquality$Temp,airquality$Ozone,airquality$Month, main='Temp,ozone,month', col='yellow')

#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot

par(mfrow=c(3,3),mar=c(2,5,2,1),  las=1, bty="n")

plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
hist(airquality$Solar.R, col='orange')
boxplot(airquality$Day,col='blue')
plot(airquality$Ozone, type='l',col='pink')
