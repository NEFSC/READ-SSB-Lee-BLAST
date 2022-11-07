
clear

/* read in the age  structures */

use "${historical_cod_naaA}", replace
append using "${historical_cod_naaB}"
collapse (mean) age1-age9, by(year)
destring, replace
save "${historical_cod_naaBoth}", replace


use "${GOM_COD_A_xx1}.dta", replace
gen source=1
append using "${GOM_COD_A_xx1}.dta"
replace source=2 if source==.


keep if inlist(year,2019,2020,2021,2022)
collapse (mean) age1-age9, by(year source)
collapse (mean) age1-age9, by(year)

foreach var of varlist age1-age9{
replace `var'=`var'/1000
}

append using "${historical_cod_naaBoth}"
sort year

notes: Constructed with "construct_historical_cod_NAA.do"
save "$cod_naaProj_and_Hist", replace
