
# Data analysys using R - Part 3
## Solve the following problems
1. Generate two vectors of 10000 values each having the uniform
distribution (0, 1). Assign these vectors to *U1* and *U2*, respectively.
Since the values in *U1* and *U2* are approximately independent, we can
view them as independent random variables.<br>
**(a)** Estimate *E[U<sub>1</sub> + U<sub>2</sub>]*. Compare with the true value, and compare with an estimate of *E[U<sub>1</sub>] + E[U<sub>2</sub>]*.<br>
**(b)** Estimate *Var(U<sub>1</sub> + U<sub>2</sub>)* and *Var(U<sub>1</sub>) + Var(U<sub>2</sub>)*. Are they equal?
Should the true values be equal?<br>
**(c)** Estimate *P(U<sub>1</sub> + U<sub>2</sub> ≤ 1.5)*.

2. Generate 1000 integers ranging from 1 to 10 that are uniformly
distributed. Use the ***table()*** function to check whether the observed
frequencies for each value are close to what you expect.

3. Write an R function which simulates 500 light bulbs, each of which
has probability 0.99 of working. Using simulation, estimate the
expected value and variance of the random variable **X**, which is 1 if
the light bulb works and 0 if the light bulb does not work. What are the theoretical values?

4. Simulate 10000 binomial pseudorandom numbers with parameters 20
and 0.3, assigning them to a vector called binsim. Let X be a
Binomial(20, 0.3) random variable. Use the simulated numbers to
estimate the following.<br>
**(a)** P(X ≤ 5).<br>
**(b)** P(X = 5).<br>
**(c)** E[X].<br>
**(d)** Var(X).<br>
**(e)** The 95th percentile of X.<br>
**(f)** The 99th percentile of X.<br>
In each case, compare your estimates with the true values. What is
required to estimate extreme quantities accurately?

5. Estimate the mean and variance of a Poisson random variable whose
mean is 7.2 by simulating 10000 Poisson pseudorandom numbers.
Compare with the theoretical values.
