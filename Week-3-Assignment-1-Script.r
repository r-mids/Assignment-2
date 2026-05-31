##Midha Assignment Week 3
## 1A:
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
par(mfrow = c(1,1))
## 1F
#the two plots with the strongest relationship appear to be comparing Petal Width and Length, as well as comparing Petal Length to Sepal Length. These plots have a strong line that indicates more of a relationship between the data sets being plotted. The two plots that do not have a strong connection are comparing Sepal Length to Sepal Width as well as comparing Sepal Width to Petal Width. These plots seem to have a more scattered arrangement of data indication there is no strong relationship.

## 2A
attach(PlantGrowth)
hist(weight, breaks = seq(3.3,6.6,.3), xaxt='n', main='Plant Growth Weight')
axis(1,at = seq(3.3,6.9,.3))

## 2B
boxplot(weight~group, col=2:4)

## 2C
# looking at the plots, about 75% of the trt1 weights are below the minimum value of the trt2 weights

## 2D
trt2 = weight[c(21:30)]
min_trt2 = min(trt2)

trt1 = weight[c(11:20)]

mean(trt1 < min_trt2) * 100

## 2E


HeavyWeight = c(0,1)
for (i in 1:length(weight)){
  if (weight[i] > 5.5){
    HeavyWeight[i] = weight[i]
    }
} 
HeavyWeight_clean = HeavyWeight[!is.na(HeavyWeight)]
HeavyWeight_clean = HeavyWeight_clean[2:9]
HeavyWeight_clean

barplot(HeavyWeight_clean, xlab='Flowers', ylab='Weight', main='Boxplot of Flowers Heavier than 5.5', col = hcl.colors(8, "Viridis"))

