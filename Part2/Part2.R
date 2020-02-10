

##PROBLEM 1 - Fibonnaci & Golden Ratio

##function to generate first n fibonacci
nth_fibonnaci = function (n){
  numbers = c(1,1)
  for(index in c(2:n)){
    newel = numbers[index-1]+numbers[index-2]
    numbers = c(numbers,newel)
  }
  return(numbers)
}

##function to generate first n ratios of fib numbers
construct_sequence = function(n){
  ##get first n+1 fibonacci numbers and construct g(n)=f(n)/f(n+1)
  fibs = nth_fibonnaci(n+1)
  sequence = c(1)
  previous = 1
  for(x in fibs[2:n+1]){
    sequence = c(sequence,x/previous)
    previous = x
  } 
  return(sequence)
}

print(construct_sequence(50))
##the sequence seems to converge to 1.618034 as n increases

golden_ratio = (1 + sqrt(5))/2
print(golden_ratio)
##the sequence converges to golden rati0

##PROBLEM 1 - Fibonnaci & Golden Ratio

##PROBLEM 2 - Twin primes
##y = 6 * x ± 1 to generate all primes(also pseudo primes)

genprimes = function(n){
  
  all_primes = c(1:n)
  
  pseudo_primes = c(1:n)
  
  ##init primes vector with 0 and pseudo primes with 1
  all_primes = sapply(all_primes,function(x){all_primes[x]=0})
  pseudo_primes = sapply(pseudo_primes,function(x){pseudo_primes[x]=1})
  
  all_primes[2] = 1
  all_primes[3] = 1
  
  d = 5
  
  ##obtain all prime numbers and mark indices in all_primes with 1
  while(d <= n){
    all_primes[d]  = 1
    all_primes[d+2] = 1
    d=d+6
  }
  
  ##marking pseudo primes with 0
  for(i in seq(5,n,by=6)){
    
    j=0
    
    ##if any result of the four equations is smaller than our given n, it means it is a pseudo prime and we increment j
    ##if all results are bigger than n,we break the step and move next
    while(TRUE){
      exit = 0
      
      eq1 = 6 * i * (j + 1) + i
      
      eq2 = ((6 * i * j) + i * i)
      
      eq3 = ((6 * (i + 2) * j) + ((i + 2) * (i + 2)))
      
      eq4 = ((6 * (i + 2) * (j + 1)) + ((i + 2) * (i + 2)) - 2 * (i + 2))
      
      if(eq1 <= n){
        pseudo_primes[eq1] = 0
      }
      else{ exit = exit + 1}
      
      if(eq2 <= n){
        pseudo_primes[eq2] = 0
      }
      else{ exit = exit + 1}
      
      if(eq3 <= n){
        pseudo_primes[eq3] = 0
      }
      else{ exit = exit + 1}
      
      if(eq4 <= n){
        pseudo_primes[eq4] = 0
      }
      else{ exit = exit + 1}
      
      if(exit == 4){break}
      
      j = j + 1
    }
  }
  
  twin_primes = c()
  ##if an both elements with index i have value 1, then index is a prime number
  for(i in seq(5,n,by=6)){
    
    ##check if both 5+6*m and 7+6*m are primes -> if true, then they are twin primes
    if(( all_primes[i] == 1 && pseudo_primes[i] == 1) && ( all_primes[i+2] == 1 && pseudo_primes[i+2] == 1)){
      twin_primes = c(twin_primes, c(i,i+2))
    }
    
  }
  
  return(twin_primes)
}
cat("Twin primes under 1000 ",genprimes(1000),"\n\n")


##PROBLEM 2 - Twin primes

##PROBLEM 3 - MOrtgage interest rates
mortgage_rate = function(n,P,open){
  
  if(open == TRUE){
    i=0.005
  }
  else{
    i=0.004
  }
  
  rate = ( P * i )/( 1- ( 1 + i ) ^ (-n) )
}
print(mortgage_rate(5,3000,TRUE))
##PROBLEM 3 - MOrtgage interest rates





##PROBLEM4 - Bisection algorithm
bisection = function(func, a, b, tolerance, max_iterations){

  if( func(a) * func(b )>= 0){
    cat("signs of a and b are not opposite")
    return
  }
  
  iterations = 0
  while(iterations < max_iterations){
    iterations = iterations + 1
    
    ##middle point
    c = (a + b) / 2
    
    if( ( func(c) == 0) || ( ( b -a ) / 2 < tolerance) ){
      cat("Found solution: ",c,". No iterations: ",iterations,"\n")
      return(C)
      }
    
    if( func(c) * func(a) <= 0 ){
      b = c
    }
    else { a = c}
    cat("interval: [ ",a," , ",c,"]\n ")
    
  }
  cat("Failed to find a root\\n","\n")
  
}

test1 = function(x){
  return(x^3 + 2*x^2 - 7)
}
test2 = function(x){
  return(x^6 -x - 1)
} 
test3 = function(x){
  return(x^3 +x^2 + 2)
} 
bisection(test1, 0, 2, 10^-6 ,10000)
bisection(test2, 0, 2, 10^-6 ,10000)
bisection(test3, -2, 2, 10^-6 ,10000)

"
for any f continuous on [a,b] and with function changing signs on a and b we know
that we have a secuence pn with n from 1 to infinity approximating a zero p.
|pn - p| <= (1/2)^n * (b-a) ,when n>=1
pn converges to p with the rate of O((1/2)^n)

|pn - p| <= (1/2)^n * (b-a) <= 10^-6
So we have 

(1/2)^n*(2-0)<= 10^-6
2^-(n-1)<=10^-6

computed on wolfram alpha , n is ~20, 
so it takes about 20 iterations for bisection algo applied on [0,2] with f changing signs to find the root
"
##PROBLEM4 - Bisection algorithm




##PROBLEM5 - Advantages of factors over numeric and char vectors

dieRolls = sample(x = c(1,2,3,4,5,6), size = 1000000, replace = TRUE)


dieRollsFactor = factor(dieRolls)
levels(dieRollsFactor) = c("One", "Two", "Three", "Four", "Five","Six")
dieRollsChar = as.character(dieRollsFactor)

str(table(dieRolls))
str(table(dieRollsFactor))
str(table(dieRollsChar))

print(table(dieRolls))
print(table(dieRollsFactor))
print(table(dieRollsChar))

##the names are all chars
##the columns are ordered by their integer representation in increasing order for vec and factor ,
##and based on their encoding for char

print(system.time(table(dieRolls)))
print(system.time(table(dieRollsFactor)))
print(system.time(table(dieRollsChar)))

##at the user-level,it can bee seen that making a table from a vector is time-consuming and takes
##a considerable amount of time(probably to adjust the data; I think table() first builds factors from vector,
## rather than trying to directly fill the levels with elements from vector )
##the same thing I thing is going on with chars -> the fastest way is with factors directly
##each of the calls spent ~0.05 seconds at kernel level(0.06 vector,0.05 factors and 0.04 chars)
print(system.time(dump("dieRolls", "Part2/dieRolls.R")))
print(system.time(dump("dieRollsFactor", "Part2/dieRollsFactor.R")))
print(system.time(dump("dieRollsChar", "Part2/dieRollsChar.R")))
##PROBLEM5 - Advantages of factors over numeric and char vectors




