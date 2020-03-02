
# Data analysys using R - Part 5
<h5>Read section 3.1 page 50, from the book W. J. Braun, D. J. Murdoch, A First Course in
Statistical Programming with R, second edition, Cambridge University Press, 2016, and do exercises 1-3 page 61. Continue with sections 3.2 and 3.3 and do exercises 1-4 page 70.</h5><br>

## Exercices for section 3.1
1.  Consider the ```islands``` vector.<br>
**(a)** Compare the histograms that result when using breaks based on
Sturges’ and Scott’s rules. Make this comparison on the log scale
and on the original scale.<br>
**(b)** Construct a normal QQ plot, and compare the result with the plots in
Figure 3.13; which one is most similar, and what does this tell you
about this data set?<br>
![Fig. 3.13](Figure1.png)
**(c)** Construct a boxplot for these data on the log scale as well as the
original scale.<br>
**(d)** Construct a dot chart of the areas. Is a log transformation needed
here?<br>
**(e)** Which form of graphic do you think is most appropriate for displaying these data?

2. The ```stackloss``` data frame contains 21 observations on four variables
taken at a factory where ammonia is converted to nitric acid. The first
three variables are ```Air.Flow```, ```Water.Temp```, and ```Acid.Conc.```. The
fourth variable is ```stack.loss```, which measures the amount of ammonia which escapes before being absorbed. (Read the help file for more
information about this data frame.)<br>
**(a)** Use ```scatterplots``` to explore possible relationships between acid concentration, water temperature, and air flow and the amount of ammonia which escapes. Do these relationships appear to be linear or
nonlinear?<br>
**(b)** Use the ```pairs()``` function to obtain all pairwise ```scatterplots``` among
the four variables. Identify pairs of variables where there might be
linear or nonlinear relationships.


3. Consider the ```pressure``` data frame. There are two columns – temperature and pressure.<br>

**(a)** Construct a ```scatterplot``` with pressure on the vertical axis and
temperature on the horizontal axis. Are the variables related linearly or nonlinearly? <br>
**(b)** The graph of the following function passes through the plotted points
reasonably well:<br>
y = (0.168 + 0.007x)<sup>20/3</sup><br>
The differences between the pressure values predicted by the curve
and the observed pressure values are called *residuals*. Here is a way
to calculate them:<br><br>
```residuals <- with(pressure, pressure -(0.168 + 0.007*temperature)ˆ(20/3))``` <br><br>
Construct a normal QQ plot of these residuals and decide whether
they are normally distributed or whether they follow a skewed
distribution.
<br>
**(c)** Now, apply the power transformation y<sup>3/20</sup> to the pressure data values. Plot these transformed values against temperature. Is a linear or
nonlinear relationship evident now?
<br>
**(d)** Calculate residuals for the difference between transformed pressure
values and those predicted by the straight line. Obtain a normal QQ
plot, and decide whether the residuals follow a normal distribution
or not.
## Exercices for sections 3.2 & 3.3</h1>
<br>4. Write code that produces the figure in the right panel of Figure 3.15. Add
an appropriate legend to the bottom right corner of the plot.
![Fig. 3.15](Figure2.png)

<br>5. Obtain an analogous set of plots to those displayed in Figure 3.18,
but with enough room for the respective titles: “Histogram-Sturges,”
“Histogram-FD,” “Density Estimate,” “Boxplot,” “QQ Plot,” and “Trace
Plot.”
![Fig. 3.18](Figure3.png)

<br>6. Re-do the plots of Figure 3.18, but this time apply the six graphics functions to a variable X which is defined by X = Z<sup>2</sup>, where Z is a simulated
standard normal random variable as in the example. Comment on the
changes that you see in the plots. (The variable X is an example of a
chi-squared random variable on one degree of freedom.)

<br>7. Refer to the previous question. Construct another set of six plots as in
Figure 3.18, but this time applied to the data in EuStockMarkets. (i.e.
apply the code of Figure 3.18 to Z, where ```Z <- EuStockMarkets```).
Comment on the results, and use the ```summary()``` function to gain further
insight. Which of the six plots are useful descriptors of this data set, and
which may be limited in their usefulness?
