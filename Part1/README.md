
# Data analysys using R - Part 1
## Solve the following problems
1. R ships with several built-in datasets, including the ***iris*** data collected
by Anderson and analyzed by Fisher in the 1930s. What are the variables
in the data set and of what type? Create a new data frame that consists
of the numeric columns of the iris dataset, and calculate the means of its
columns.

2. The ***beaver1*** and ***beaver2*** datasets contain body temperatures of two
beavers. Add a column named id to the ***beaver1*** dataset, where the value
is always 1. Similarly, add an id column ***beaver2***, with value 2. Vertically
concatenate the two data frames and find the subset where either beaver is
active.

3. The ***orings*** data frame in the ***faraway*** package gives data on the damage that had occurred in US space shuttle launches prior to the disastrous Challenger launch of 28 January 1986. The observations in rows 1, 2, 4, 11, 13 and 18 were included in the pre-launch charts used in deciding whether to proceed with the launch, while remaining rows were omitted. Create a new data frame by extracting these rows from ***orings***, and plot total incidents against temperature for this new data frame. Obtain a similar plot for the full data set.

4. For the data frame ***ais*** (DAAG package),<br>
**(a)** use the function ***str()*** to get information on each of the columns and determine whether any of the columns hold missing values; </br>
**(b)** make a table that shows the numbers of males and females for each different sport. In which sports is there a large imbalance (e.g., by a factor of more than 2:1) in the numbers of the two sexes?

5. The data frame ***socsupport*** (DAAG) has data from a survey on social
and other kinds of support, for a group of university students. It includes Beck Depression Inventory (BDI) scores. The following are two alternative plots of BDI against age:
<br><br>
```
plot(BDI∼ age, data=socsupport)
```
<br><br>
```
plot(BDI ∼ unclass(age), data=socsupport)
```
<br><br>
For examination of cases where the score seems very high, which plot is more
useful? Explain. Why is it necessary to be cautious in making anything of
the plots for students in the three oldest age categories (25-30, 31-40, 40+)?