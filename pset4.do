use "\star.dta"
*generating total SAT score
gen sat_total = read+math+listen+wordskill
browse
*evaluating correlation
correlate sat_total teacher_experience
*creating regression
regress sat_total teacher_experience
*visualizing regression
graph twoway (lfitci sat_total teacher_experience ) (scatter sat_total teacher_experience )