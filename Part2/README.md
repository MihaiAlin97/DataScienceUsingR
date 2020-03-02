
# Data analysys using R - Part 2
## Solve the following problems

1. Let f<sub>n</sub> denote the nth Fibonacci number. <br>
**(a)** Construct a sequence of
ratios of the form <sup>f<sub>n + 1</sub></sup>&frasl;<sub>f<sub>n + 1</sub></sub>
, n = 1, 2, . . . , 30. Does the sequence appear to be converging? <br>
**(b)** Compute the golden ratio (1 + √5)/2. Is the sequence converging to this ratio? (Optional) Can you mathematically prove this?

2. A twin prime is a pair of primes (x, y), such that y = x + 2.
Construct a list of all twin primes less than 1000.

3. Mortgage interest rates can sometimes depend on whether the
mortgage term is open or closed. Use the formula R = <sup>P<sub>i</sub></sup>&frasl;<sub>i - (1 + i)<sup>-n</sup></sub> to 
create a function to calculate a monthly mortgage payment R where i
is an interest rate (compounded monthly), P is the original principal,
and n is the length of the term (in months). The function should take
n, P, and open as arguments. If open is rqual to TRUE, then take i =
0.005; otherwise, take i = 0.004.

4. Another algorithm for finding a zero of a function is called the
bisection algorithm. This algorithm starts with two values x<sub>1</sub> and x<sub>2</sub>
for which f (x<sub>1</sub>) and f (x<sub>2</sub>) have opposite signs. If f (x) is a continuous
function, then we know a root must lie somewhere between these two
values. We find it by evaluating f (x) at the midpoint, and selecting
whichever half of the interval still brackets the root. We then start
over, and repeat the calculation until the interval is short enough to
give us our answer to the required precision. <br>
**(a)** Use a function to
implement the bisection algorithm to find a root to 6 decimal place
accuracy of f (x) = x<sup>3</sup> + 2x<sup>2</sup> − 7, given that the root is known to lie
between 0 and 2. <br>
**(b)** Why do you think that your bisection algorithm
is guaranteed to converge for any continuous function which takes
opposite-signed values at 0 and 2, and calculate how many loops it
will take.

5. The goal of this exercise is for you to use artificial data to see what
the advantages of factors are over numeric and character vectors.<br>
**(a)** Use the sample() function to construct a vector called dieRolls
which simulates the results of 1000000 tosses of a six-sided die.<br>
**(b)** Convert dieRolls to a factor called dieRollsFactor. Change the
levels of the factor using the code
levels(dieRollsFactor)←c(”One”, ”Two”, ”Three”, ”Four”, ”Five”,
”Six”)<br>
**(c)** Create a character version of the vector using ```dieRollsChar← as.character(dieRollsFactor)```<br>
**(d)** Apply the ```table()``` function to each of ```dieRolls```, ```dieRollsFactor```, and
```dieRollsChar```, and compare the results as well as how the information
in each of the data sets is displayed.<br>
**(e)** Run the code<br>
```system.time(table(dieRolls))```<br>
```system.time(table(dieRollsFactor))```<br>
```system.time(table(dieRollsChar))```<br>
to compare the length of time required to construct the three tables,
using each data type. Which table was produced most quickly?
Which was the slowest?<br>
**(f)** Run the code<br>
```dump(”dieRolls”, ”dieRolls.R”)```<br>
```dump(”dieRollsFactor”, ”dieRollsFactor.R”)```<br>
```dump(”dieRollsChar”, ”dieRollsChar.R”)```<br>
Investigate the properties of the files ```dieRolls.R```, ```dieRollsFactor.R```, and ```dieRollsChar.R```; which one requires the smallest amount of memory. Which file takes the most memory?
