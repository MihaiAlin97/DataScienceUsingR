##PROBLEM 1 - Standard random variable
z = rnorm(1000)
len = length(z)

P1 = length(z[z>2.5])/len
P2 = length(z[z>0 & z<1.645])/len
P3 = length(z[z>1.2 & z<1.45])/len
P4 = length(z[z>-1.2 & z<1.3])/len
vals = c(pnorm(2.5),pnorm(1.645)-pnorm(0),pnorm(1.45)-pnorm(1.2),pnorm(1.3)-pnorm(-1.2))
cat("Problem 1 \n")
cat("P1     : ",P1,", P2     : ",P2,", P3     : ",P3,", P4     : ",P4,"\n")
cat("TheoP1 : ",vals[1],", TheoP2 : ",vals[2],", TheoP3 : ",vals[3],", TheoP4 : ",vals[4],"\n")
##PROBLEM 1 - Standard random variable




##PROBLEM 2 - x^2
x = rchisq (10000, df = 8)

cat("Problem 2 \n")
cat("Mean obtained: ",mean(x)," Theoretical mean: 8\n")
cat("Variance obtained: ",var(x)," Theoretical variance: 16\n")
##PROBLEM 2 - x^2





##PROBLEM 3 - Iris
cat("Problem 3 \n")

##mode function
## mark all elements in x,then count number of occurences of each 
## select index of the element with maximum no of occurences

mode = function(x) {
  y = unique(x)
  return(y[which.max(tabulate(match(x, y)))])
}

sub = subset(iris,Species=="setosa")

cat("Mean: ",mean(iris$Petal.Length)," Median: ",median(iris$Petal.Length)," Mode: ",mode(iris$Petal.Length),"\n")
cat("Range: ",range(sub$Sepal.Length)," Variation: ",var(sub$Sepal.Length)," Standard deviation: ",sd(sub$Sepal.Length)," IQR: ",IQR(sub$Sepal.Length),"\n")


cat("Kurtoris is: ",e1071::kurtosis(iris$Petal.Width)," , so distribution is platykurtic\n")
cat("Skewness is: ",e1071::skewness(iris$Petal.Width)," , so distribution is left-skewed,but since it is so small it s symmetrical\n") 
##PROBLEM 3 - Iris




##PROBLEM 4 - Iris graphics

png(file = "Part4/PROBLEM4hist.png")
hist(iris$Petal.Length, probability = TRUE, main = 'Histogram of Petal Length', xlab='Petal Length')
dev.off()


png(file = "Part4/PROBLEM4plot.png")
boxplot(formula = Petal.Length ~ Species, data = iris)
dev.off()
##PROBLEM 4 - Iris graphics