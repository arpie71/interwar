
local test: dir "trade" files "*.xlsx"
local test: subinstr local test ".xlsx" "" , all
local test: subinstr local test "frmorocco" "" , all
local test: subinstr local test "austriahungary" "" , all
local test: subinstr local test "danzig" "" , all
local test: subinstr local test "burma" "" , all
local test: subinstr local test "northrhodesia" "" , all
local test : list clean test

qui foreach x of local test {

nois di "`x'"
import excel using trade/`x'.xlsx , sheet(imports) allstring clear

foreach var of varlist E-BB {
rename `var' imp`= `var'[1]'
}

dropmiss , force

replace A = A[_n-1] if A==""
rename A importer
rename B exporter
rename C notes
drop D 
preserve
drop in 1 
keep in 1
reshape long imp, i(importer exporter) j(year)
keep year imp
rename imp places
destring _all , replace
tempfile u
sort year
save `u' 
restore
preserve
drop in 1/2 
keep in 1
reshape long imp, i(importer exporter) j(year)
keep year imp
rename imp currency
replace currency = proper(currency)
destring _all , replace
tempfile c
sort year
save `c' 
restore


drop in 1
drop if exporter==""
replace exporter=ltrim(rtrim(exporter))
duplicates drop importer exporter, force
reshape long imp, i(importer exporter) j(year)

compress
drop notes 
capture drop var55
sort year
merge m:1 year using `u' , 
drop _merge

merge m:1 year using `c' , 
drop _merge

destring imp , replace ign(" " ",") force

qui do scripts\ccode_code.do
gen ccode1 = .
qui do scripts\cow1.do

qui sum ccode1
if r(mean)==20 | r(mean)==200 | r(mean)==375 | r(mean)==380 | r(mean)==255 {
replace ccode2 = 560 if ccode2==573
}

collapse (sum) imp (mean) places, by(ccode1 ccode2 year currency)
levelsof ccode1 , clean local(c)
drop if imp==. 

drop if imp==0 & places==.
compress
	ccode ccode1 , from(cow) to(cty) gen(country1)
	ccode ccode2 , from(cow) to(cty) gen(country2)
	qui do scripts/ccode_interwar
	replace country1 = "British East Africa" if ccode1==505
	replace country1 = "Zanzibar" if ccode1==511
	replace country1 = "Ruanda-Urundi" if ccode1==515
	replace country1 = "British South Africa" if ccode1==573
	replace country1 = "French Indo-China" if ccode1==810

	nois tab ccode2 if country2==""
order ccode1 ccode2 year imp places currency

sort ccode1 ccode2 year
save stata/trade/`x'.dta , replace
export delimited using csv/trade/`x'.csv , replace
}
