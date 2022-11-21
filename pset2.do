*Stata Problem Set 2 Do File, Arnav Agarwal

*Question 1
use "C:\Users\arnava\OneDrive - The University of Chicago\VoltageRA\PSET 2\health.dta"
histogram tm1_gagne_sum, width(1) percent
tabulate tm1_gagne_sum

*Question 2
use "C:\Users\arnava\OneDrive - The University of Chicago\VoltageRA\PSET 2\star.dta"
preserve
keep if school_id == 244736
tabulate female
restore
preserve
collapse female, by(school_id)
summarize female
keep if female == .680851
list
restore

*Question 3
import delimited "C:\Users\arnava\OneDrive - The University of Chicago\VoltageRA\PSET 2\states-daily-p1.csv", clear 
save "C:\Users\arnava\OneDrive - The University of Chicago\VoltageRA\PSET 2\states-daily-p1.dta"
clear
import delimited "C:\Users\arnava\OneDrive - The University of Chicago\VoltageRA\PSET 2\states-daily-p2.csv"
save "C:\Users\arnava\OneDrive - The University of Chicago\VoltageRA\PSET 2\states-daily-p2.dta"
cd "C:\Users\arnava\OneDrive - The University of Chicago\VoltageRA\PSET 2"
use "C:\Users\arnava\OneDrive - The University of Chicago\VoltageRA\PSET 2\states-daily-p1.dta"
append using "C:\Users\arnava\OneDrive - The University of Chicago\VoltageRA\PSET 2\states-daily-p2.dta"
save "C:\Users\arnava\OneDrive - The University of Chicago\VoltageRA\PSET 2\states-all.dta"
clear
use "C:\Users\arnava\OneDrive - The University of Chicago\VoltageRA\PSET 2\states-all.dta"
export delimited using "C:\Users\arnava\OneDrive - The University of Chicago\VoltageRA\PSET 2\states-all.csv", replace

*Question 4
preserve
keep if state == "IL"
tostring date, replace
gen date2 = date(date, "YMD")
format date2 %td
line hospitalizedc~y date2
restore

*Question 5
use "C:\Users\arnava\OneDrive - The University of Chicago\VoltageRA\PSET 2\star.dta"
generate teachers_race = ""
replace teachers_race = "white" if teacher_white == 1
replace teachers_race = "black" if teacher_black == 1
replace teachers_race = "other" if (teacher_white == 0) & (teacher_black == 0)
preserve
tabulate teachers_race teacher_masters