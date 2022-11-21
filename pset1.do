*Stata Problem Set 1 Do File, Arnav Agarwal

*Question 1
use "C:\Users\arnava\OneDrive - The University of Chicago\VoltageRA\PSET 1\star.dta"
count
di c(k)
use "C:\Users\arnava\OneDrive - The University of Chicago\VoltageRA\PSET 1\health.dta"
count
di c(k)

*Question 2
use "C:\Users\arnava\OneDrive - The University of Chicago\VoltageRA\PSET 1\star.dta"
count if small==1
display 1723/5710 *100

*Question 3
use "C:\Users\arnava\OneDrive - The University of Chicago\VoltageRA\PSET 1\health.dta"
count if tm1_depression_elixhauser == 1
display 3028/48784 * 100

*Question 4
generate race2 = 0
replace race2 = 1 if race == "black"
count if race2 == 1
display 5582/48784 * 100

*Question 5
*refer to pdf