##PROBLEM 1 - Section 3.1

##a

png(file = "Part5/PROBLEM1hist1.png")
par(mfrow=c(2,2))
hist(islands, breaks = "Sturges", main = "Sturges")
hist(islands, breaks = "Scott", main = "Scott")
hist(log(islands), breaks = "Sturges", main = "Sturges on log scale")
hist(log(islands), breaks = "Scott", main = "Scott on log scale")
dev.off()
##using the log scale you can see the differences more clearly
##a

##b
png(file = "Part5/PROBLEM1plot1.png")
par(mfrow=c(1,2))
qqnorm(islands, pch = 1, frame = FALSE)
qqline(islands, col = "red", lwd = 2)
dev.off()

##the plot is most similar to the fourth plot in the figure;it shows us that the dataset has an exponential distribution
##b

##c
png(file = "Part5/PROBLEM1plot2.png")
par(mfrow=c(1,2))
boxplot(log(islands), main = "Log scale")
boxplot(islands, main = "Original scale")
dev.off()
##c

##d
png(file = "Part5/PROBLEM1chart1.png")
par(mfrow=c(1,2))
dotchart(log(islands),main="Log scale")
dotchart(islands,main="Original scale")
dev.off()
##Log scale helps in better visualizing the magnitude of number of islands 
##while linear scale makes it difficult to see any difference between normal values in the set
##I think is needed
##d

##e
##Sturges hstogram on log scale seems the most appropriate
##e

##PROBLEM 1 - Section 3.1

##PROBLEM 2 - Section 3.1
##a

x=stackloss$Water.Temp
y=stackloss$Acid.Conc.
z=stackloss$Air.Flow

png(file = "Part5/PROBLEM2plot1.png")
par(mfrow = c(1,3))
plot(x , y , main="Water Temp vs Acid concentration")
plot(x , z , main="Water Temp vs Air Flow")
plot(z , y , main="Air Flow vs Acid Concentration")
dev.off()

##Water.Temp and Acid.Conc. has non linear relationship
##Water.Temp and Air.Flow has linear relationship
##Acid.Conc. and Air.Flow has non linear relationship
##a

##b
png(file = "Part5/PROBLEM2plot2.png")
pairs(~Air.Flow+Water.Temp+Acid.Conc.+stack.loss,data= stackloss,main ="Scatterplot matrix")
dev.off()
##b
##PROBLEM 2 - Section 3.1

##PROBLEM 3 - Section 3.1
##a
png(file = "Part5/PROBLEM3plot1.png")
plot(pressure ~ temperature, data = pressure)
dev.off()
##there is a linear relationship;the trend is linear and we have a few exceptions
##a

##b
png(file = "Part5/PROBLEM3plot2.png")

residuals = with(pressure,pressure - (0.168 + 0.007*temperature)^(20/3))

qqnorm(residuals)
dev.off()
##residuals have a normal distribution;they come from the same population
##b

##c
png(file = "Part5/PROBLEM3plot3.png")
plot(pressure^(3/20) ~ temperature, data = pressure)
dev.off()
##it is clear a linear relationship
##c

##d
pressure_tranformed = (pressure)^(3/20)
modified_data = with(pressure,pressure^(20/3))
model=lm(modified_data~pressure$temperature)
print(summary(model))

png(file = "Part5/PROBLEM3plot4.png")
plot(model, which=c(2))
dev.off()

##based on the qq,the residuals are normally distributed
##d
##PROBLEM 3 - Section 3.1

##PROBLEM 4 - Sections Section 3.2 & 3.3
png(file = "Part5/PROBLEM4plot1.png")
plot(circumference ~ age, pch = as.numeric(as.character(Tree)),data = Orange)
lines(circumference ~ age, data = Orange, subset = Tree == "1", lty = 1)
lines(circumference ~ age, data = Orange, subset = Tree == "2", lty = 2)
lines(circumference ~ age, data = Orange, subset = Tree == "3", lty = 3,lwd = 2)
lines(circumference ~ age, data = Orange, subset = Tree == "4", lty = 4)
lines(circumference ~ age, data = Orange, subset = Tree == "5", lty = 5)
legend("bottomright", legend = paste("Tree", 1:5), lty=1:5, pch = 1:5)
dev.off()
##PROBLEM 4 - Sections Section 3.2 & 3.3





##PROBLEM 5 - Sections Section 3.2 & 3.3
png(file = "Part5/PROBLEM5figure.png")
par(list = list(mfrow = c(3, 2), mar = c(2.1,2.1,4.1,0.1)))
Z = rnorm(1000)
hist(Z, main = "Histogram-Sturges")
hist(Z, breaks = "Freedman-Diaconis", main = "Histogram-FD")
plot(density(Z), main = "Density Estimate")
boxplot(Z, main = "Boxplot")
qqnorm(Z, main = "QQ Plot")
qqline(Z)
ts.plot(Z, main = "Trace Plot")
dev.off()
##PROBLEM 5 - Sections Section 3.2 & 3.3




##PROBLEM 6 - Sections Section 3.2 & 3.3
png(file = "Part5/PROBLEM6figure.png")
par(list = list(mfrow = c(3, 2), mar = c(2.1,2.1,4.1,0.1)))
Z = rnorm(1000)
X = Z^2
hist(X, main = "Histogram-Sturges")
hist(X, breaks = "Freedman-Diaconis", main = "Histogram-FD")
plot(density(X), main = "Density Estimate")
boxplot(X, main = "Boxplot")
qqnorm(X, main = "QQ Plot")
qqline(X)
ts.plot(X, main = "Trace Plot")
dev.off()
##PROBLEM 6 - Sections Section 3.2 & 3.3





##PROBLEM 7 - Sections Section 3.2 & 3.3
png(file = "Part5/PROBLEM7figure.png")
par(list = list(mfrow = c(3, 2), mar = c(2.1,2.1,4.1,0.1)))
Z = EuStockMarkets
X = Z^2
hist(X, main = "Histogram-Sturges")
hist(X, breaks = "Freedman-Diaconis", main = "Histogram-FD")
plot(density(X), main = "Density Estimate")
boxplot(X, main = "Boxplot")
qqnorm(X, main = "QQ Plot")
qqline(X)
ts.plot(X, main = "Trace Plot")
dev.off()
##PROBLEM 7 - Sections Section 3.2 & 3.3