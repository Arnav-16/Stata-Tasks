*Problem 1
use "C:\Users\arnava\OneDrive - The University of Chicago\VoltageRA\PSET 3\health 12.36.02 PM.dta"
correlate tm1_gagne_sum cost_t

*Problem 2
regress tm1_cost_dialysis tm1_renal_eli~r

*Problem 3
use "C:\Users\arnava\OneDrive - The University of Chicago\VoltageRA\PSET 3\star 12.36.02 PM.dta"
correlate math listen

*Problem 4
regress small freelunch
graph twoway (lfitci small freelunch) (scatter small freelunch)

*Problem 5
regress teacher_masters teacher_white
graph twoway (lfitci teacher_masters teacher_white ) (scatter teacher_masters teacher_white )
correlate teacher_white teacher_masters
