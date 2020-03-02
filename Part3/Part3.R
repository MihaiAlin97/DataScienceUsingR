##PROBLEM 1 - Uniform distribution
U1 = runif(1000, min = 0, max = 1)
U2 = runif(1000, min = 0, max = 1)

##expectation for independent uniform rand var is the midpoint of interval
##also expectation of sum of xi for i from 1 to n is the sum of expectations of each variables
## I will estimate them using the mean

m1 = mean(U1 + U2)
m2 = mean(U1) + mean(U2)

##true values of expectations
m1TV = (0+2)/2 ##1
m2TV = (0+1)/2 + (0 + 1)/2 ## 1
##they are indeed the same

##compute variances
v1 = var(U1 + U2)
v2 = var(U1) + var(U2)

## true vals of variances
v1TV = ((2-0)^2)/12
v2TV = ((1-0)^2)/12 + ((1-0)^2)/12
##first true value is twice the second

if(m1 == m2){
  comp = " = "
}else if(m1 < m2){
  comp = "<"
}else{ 
  comp = ">"
}
cat(m1," ",comp," ",m2,"\n")
cat("E(U1+U2) ",comp," E(U1) + E(U2)","\n")
if(v1 == v2){
  comp = " = "
}else if(v1 < v2){
  comp = "<"
}else{ 
  comp = ">"
}
cat(v1," ",comp," ",v2,"\n")
cat("V(U1+U2) ",comp," V(U1) + V(U2)","\n")

##compute prob that u1+u2 <=1.5
combined = U1 + U2

print(U1[1])
print(U2[1])
print(combined[1])
under_tresh = length(combined[combined<=1.5])
prob = under_tresh/2000
print(prob)
cat("Probability is:",prob,"\n")
##density of their sums is 2-z if z in ( 1,2] , so it's 0.5

##PROBLEM 1 - Uniform distribution




##PROBLEM 2 - Generate ints
U = sample((1:10), 1000, replace = TRUE, prob = NULL)
info = table(U)
print(info)
##PROBLEM 2 - Generate ints




##PROBLEM 3 - Light Bulbs

bulbs = rbinom(500, size = 1, prob = 0.99)
cat("bulbs: ",bulbs,"\n")
cat("mean is: ",mean(bulbs),"\n")

cat("var is: ",var(bulbs),"\n")

##true val of expected value 
eTV = 1*0.99
##true val variance
vTV=(1*0.99)*(1 - 0.99)

cat("True value - expectation: ",eTV,"True value - variance: ",vTV,"\n")

##PROBLEM 3 - Light Bulbs


##PROBLEM 4 - 1000 binomials
binsim = rbinom(1000, size = 20, prob = 0.3)
qts = quantile(binsim,probs = seq(0, 1, 0.01))

cat("P(X <= 5) : ",sum(binsim <= 5)/1000,"\n")
cat("P(X == 5) : ",sum(binsim == 5)/1000,"\n")
cat("P(X == 0) : ",sum(binsim == 0)/1000,"\n")
cat("E[X]      : ",mean(binsim),"\n")
cat("Var(X)    : ",var(binsim),"\n")
cat("95%       : ",qts["95%"],"\n")
cat("91%       : ",qts["91%"],"\n")

##true values
pTV1 = pbinom(5, size=20, prob=0.3) 
pTV2=  dbinom(5, size=20, prob=0.3) 
mTV = 20*0.3
varTV = 20*0.3*(1-0.3)


##PROBLEM 4 - 1000 binomials




##PROBLEM 5 - Poisson
x = rpois(10000, lambda = 7.2)
cat("Poisson\n")
cat("E[X]      : ",mean(x),"\n")
cat("Var(X)    : ",var(x),"\n")

##True values for mean and variance are both 7.2 - > E and V are close to true values
##PROBLEM 5 - Poisson