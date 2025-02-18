


cd stata/trade
local trade : dir "" files "*.dta"
clear
append using `trade' , force
sort ccode1 ccode2 year
save ../interwar_M.dta , replace
export delimited using ../../csv/interwar_M.csv , replace

cd ../..

cd stata/XRs
local xrs : dir "" files "*.dta"
clear
append using `xrs' , force
sort ccode1  year
save ../interwar_XRs.dta , replace
export delimited using ../../csv/interwar_XRs.csv , replace

cd ../..

cd stata/combined
local combined: dir "" files "*.dta"
clear
append using `combined' , force
sort ccode1  ccode2 year
save ../interwar_combined.dta , replace
export delimited using ../../csv/interwar_combined.csv , replace

cd ../..