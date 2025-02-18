cd \\wsl.localhost\Ubuntu\home\arpie71\interwar

local test: dir "stata/XRs" files "*.dta" 
local test : list clean test

local trade: dir "stata/trade" files "*.dta" 
local trade: list clean trade

local dif :  list trade - test
local cmiss = " "
qui foreach f of local test {
	nois di "`f'"
	use stata/XRs/`f' , clear
	
	if "`f'"=="kenya.dta" | "`f'"=="uganda.dta" {
		replace ccode1=505
	}
	
	tempfile a 
	save `a' , replace
	
	if "`f'"=="guyana.dta" {
		local f: subinstr local f "guyana" "br_guiana" , all

	}
	if "`f'"=="yugo.dta" {
		local f: subinstr local f "yugo" "yugoslavia" , all

	}
	if "`f'"=="safrica.dta" {
		local f: subinstr local f "safrica" "southafrica" , all

	}
	if "`f'"=="britishindia.dta" {
		local f: subinstr local f "britishindia" "india" , all

	}
	if "`f'"=="kenya.dta"  {
		local f: subinstr local f "kenya" "kenyauganda" , all

	}
	if  "`f'"=="uganda.dta" {
		local f: subinstr local f "uganda" "kenyauganda" , all

	}
	if  "`f'"=="tanzania.dta" {
		local f: subinstr local f "tanzania" "tanganyika" , all

	}
	if  "`f'"=="ghana.dta" {
		local f: subinstr local f "ghana" "goldcoast" , all

	}
	if  "`f'"=="domrep.dta" {
		local f: subinstr local f "domrep" "santodomingo" , all

	}
	if  "`f'"=="straitssettlement.dta" {
		local f: subinstr local f "straitssettlement" "br_malaya" , all

	}
	if  "`f'"=="indonesia.dta" {
		local f: subinstr local f "indonesia" "neth_eindies" , all

	}
	
	use stata/trade/`f' , clear
	merge m:1 ccode1 year using `a' 
	drop _merge
	drop if year>1950
	compress
	order ccode1 country1 ccode2 country2 year imp 
	local dif :  list dif - f
	
	save stata/combined/`f' , replace
	export delimited using csv/combined/`f', replace
}

qui foreach fi of local dif {
	nois di "`fi'"
	use stata/trade/`fi' , clear
	drop if year>1950
	compress
	order ccode1 country1 ccode2 country2 year imp 
	save stata/combined/`fi' , replace
	export delimited using csv/combined/`fi', replace
	
}

