
local test: dir "XRs" files "*.csv"
local test: subinstr local test ".csv" "" , all
local j = 1
qui foreach l of local test {
insheet using XRs/`l'.csv , comma clear names

di "`l'"
gen year = substr(date,-4,4)

capture confirm variable average
if _rc==0 {
rename average xr_gfd
}
if _rc~=0 {
rename period_average xr_gfd
}

gen Country=proper("`l'")

gen ccode1 = .
local r "replace ccode1 = "

`r' 305 if Country=="Austria"
`r' 53 if Country=="Barbados"
`r' 155 if Country=="Chile"
`r' 100 if Country=="Colombia"
`r' 94 if Country=="Costarica"
`r' 225 if Country=="Switz"
`r' 200 if Country=="Uk"
`r'  2 if Country=="US"
`r' 160 if Country=="Argentina"
`r' 900 if Country=="Australia"
`r' 101 if Country=="Venezuela"
`r' 165 if Country=="Uruguay"
`r' 130 if Country=="Ecuador"
`r' 385 if Country=="Norway"
`r' 360 if Country=="Romania"
`r' 220 if Country=="France"
`r' 135 if Country=="Peru"
`r' 210 if Country=="Netherlands"
`r' 339 if Country=="Albania"
`r' 750 if Country=="Britishindia"
`r' 40 if Country=="Cuba"
`r' 640 if Country=="Turkey"
`r' 255 if Country=="Germany"
`r' 110 if Country=="British Guiana"
`r' 345 if Country=="Yugo"
`r' 380 if Country=="Sweden"
`r' 325 if Country=="Italy"
`r' 740 if Country=="Japan"
`r' 115 if Country=="Suriname"
`r' 56 if Country=="St Lucia"
`r' 55 if Country=="Grenada"
`r' 475 if Country=="Nigeria"
`r' 70 if Country=="Mexico"
`r' 390 if Country=="Denmark"
`r' 20 if Country=="Canada"
`r' 290 if Country=="Poland"
`r' 145 if Country=="Bolivia"
`r' 366 if Country=="Estonia"
`r' 616 if Country=="Tunisia"
`r' 355 if Country=="Bulgaria"
`r' 211 if Country=="Belgium"
`r' 651 if Country=="Egypt"
`r' 490 if Country=="Belgian-Kongo"
`r' 42 if Country=="Domrep"
`r' 52 if Country=="Trinidad"
`r' 710 if Country=="China"
`r' 30 if Country=="Bermuda"
`r' 560 if Country=="Safrica"
`r' 551 if Country=="Northern Rhodesia"
`r' 552 if Country=="Southern Rhodesia"
`r' 565 if Country=="Southwest Africa"
`r' 367 if Country=="Latvia"
`r' 368 if Country=="Lithuania"
`r' 140 if Country=="Brazil"
`r' 515 if Country=="Ruanda-Urundi"
`r' 92 if Country=="Salvador"
`r' 840 if Country=="Philippines"
`r' 590 if Country=="Mauritius"
`r' 338 if Country=="Malta"
`r' 820 if Country=="British Malaya"
`r' 505 if Country=="Kenya and Uganda"
`r' 352 if Country=="Cyprus"
`r' 80 if Country=="British Honduras"
`r' 800 if Country=="Thailand"
`r' 591 if Country=="Seychelles"
`r' 910 if Country=="Papua"
`r' 93 if Country=="Nicaragua"
`r' 235 if Country=="Portugal"
`r' 315 if Country=="Czecho"
`r' 395 if Country=="Iceland"
`r' 205 if Country=="Ireland"
`r' 920 if Country=="Newzealand"
`r' 90 if Country=="Guatemala"
`r' 541 if Country=="Mozambique"
`r' 51 if Country=="Jamaica"
`r' 553 if Country=="Nyasaland"
`r' 95 if Country=="Panama"
`r' 310 if Country=="Hungary"
`r' 150 if Country=="Paraguay"
`r' 91 if Country=="Honduras"
`r' 850 if Country=="Dutch East Indies"
`r' 990 if Country=="Western Samoa"
`r' 652 if Country=="Syria-Lebanon"
`r' 461 if Country=="Togo"
`r' 41 if Country=="Haiti"
`r' 645 if Country=="Iraq"
`r' 511 if Country=="Zanzibar"
`r' 625 if Country=="Sudan"
`r' 375 if Country=="Finland"
`r' 420 if Country=="Gambia"
`r' 452 if Country=="Gold Coast"
`r' 510 if Country=="Tanganyika"
`r' 451 if Country=="Sierra Leone"
`r' 350 if Country=="Greece"
`r' 810 if Country=="French Indochina"
`r' 450 if Country=="Liberia"
`r' 950 if Country=="Fiji"
`r' 230 if Country=="Spain"
`r' 365 if Country=="Russia"
`r' 720 if Country=="Hongkong"
`r' 820 if Country=="Straitssettlement"
`r' 780 if Country=="Ceylon"
`r' 850 if Country=="Indonesia"
`r' 52 if Country=="Trinidad"
`r' 110 if Country=="Guyana"
`r' 451 if Country=="Sierraleone"
`r' 452 if Country=="Ghana"
`r' 490 if Country=="Belgkongo"
`r' 500 if Country=="Uganda"
`r' 501 if Country=="Kenya"
`r' 510 if Country=="Tanzania"

destring year xr_gfd , replace ign(",")

clonevar xr_gfd_trade = xr_gfd 
di "Country `l'"
qui sum ccode1

if r(mean)==93 {
replace xr_gfd_trade=1 if year>=1938 & year<=1949 /* Imports in US$*/
}
if r(mean)==94 {
replace xr_gfd_trade=1 if year>=1936 & year<=1949 /* Imports in US$*/
}
if r(mean)==145 {
replace xr_gfd_trade=1 if year>=1947 & year<=1949 /* Imports in US$ */
}
if r(mean)==200 | r(mean)==205 | r(mean)==900 | r(mean)==920 | r(mean)==225 {
gen xr = xr_gfd_trade
replace xr_gfd_trade = 1/xr
}

if r(mean)==135 {
replace xr_gfd_trade = xr_gfd_trade/10 if year>=1919 & year<=1929
replace xr_gfd_trade = 6.5 if year==1948
}
if r(mean)==165 {
replace xr_gfd_trade = 1 if year>=1940 & year<=1949
}


if r(N)==0 {
nois di "`l'"
nois di as error "No ccode"
exit 198
}
ccode ccode1 , from(cow) to(cty) gen(country1)
drop Country

keep ccode1 year country1 xr_gfd xr_gfd_trade
order country1 ccode1 year xr_gfd xr_gfd_trade

compress

save stata/XRs/`l'.dta , replace
export delimited using csv/XRs/`l'.csv , replace
}
