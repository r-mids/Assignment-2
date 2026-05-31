##Midha Assignment Week 3
## 1A:
iris
attach(iris)

hist(Sepal.Width)
## 1B
#based on the plot above. the data seems to be pretty symmetric, if anything slightly skewed to the right, with the mean slightly higher than the median.

## 1C
mean(Sepal.Width)
median(Sepal.Width)
#looking at the above information, my initla expectation of the data being skewed slightly right was correct with the mean 0.06 higher than the median. 

## 1D
#finding the width where only 23% of the data is higher than is the same as asking for the 73 perctentile, found below.
quarts=quantile(Sepal.Width,.73)

## 1E
par(mfrow = c(2,3))
plot(Sepal.Width~Sepal.Length, xlab='Sepal Length', ylab ='Sepal.Width', main='Sepal Width Vs Sepal Length')
plot(Sepal.Width~Petal.Width, xlab='Petal.Width', ylab ='Sepal.Width', main='Sepal Width Vs Petal.Width')
plot(Sepal.Width~Petal.Length, xlab='Petal.Length', ylab ='Sepal.Width', main='Sepal Width Vs Petal.Length')
plot(Sepal.Length~Petal.Width, xlab='Petal.Width', ylab ='Sepal Length', main='Sepal Length Vs Petal.Width')
plot(Sepal.Length~Petal.Length, xlab='Petal.Length', ylab ='Sepal Length', main='Sepal Length Vs Petal.Length')
plot(Petal.Width~Petal.Length, xlab='Petal.Length', ylab ='Petal.Width', main='Petal.Width Vs Petal.Length')

#the two plots with the strongest connection appear to be comparing Petal Width and Length, as well as comparing Petal Lenght to Sepal Length. These plots have a strong line that indicates more of a correlation.. The two plots that do not have a strong connection are comparing Sepal Length to Sepal Width as well as comparing Sepal Width to Petal Width. These plots seem to have a more scattered arrangement of data indication there is no strong relationship.

## 2A
attach(PlantGrowth)

hist(weight,breaks=.3)

boxplot(weight~group, col=2:4)

