# Interwar Trade data


## Data
This data has already been incorporated into <a href='https://correlatesofwar.org/data-sets/bilateral-trade/'>COW's Trade (v4.0)</a> by Katherine Barbieri and Omar Keshk as well <a href='https://ricardo.medialab.sciences-po.fr/#!/'>the RICardo project</a> by Beatrice Dedinger and Paul Girard. Both of these datasets contain a wealth of information about pre-World War II trade. 

We are releasing our data now in the original form. We collected bilateral trade data mainly from trade yearbooks and statistical abstracts for different countries and territories. As such, the trade data is almost always represented in the domestic currency. We then collected exchange rate data from a variety of sources in order to convert the trade data into US dollars. 


## Directory structure

`ctydata` contains the Excel spreadsheets for each territorial entity for which we collected trade data. The files are all structured the same with years as the columns and the trading partner as rows. The column headings also contain the magnitude of the trade value as well as the currency of the value. At the bottom of each column is the total value (when available) as well as the difference between the total in the source and the sum of the values entered. This was used as a check on the entered values. We also list the source of the trade data at the bottom of each column.

`XRs` contains the exchange rate by country from Global Financial Database. We ended up using these exchange rates for the final conversion to US dollars. The folder also has a file called `xrs.xlsx`. This file is a cross-section time-series structure with three different sources of exchange rates grouped by country and year. Column `XR1` has exchange rate data from 
Officer, Lawrence H. 2009. Exchange Rates Between the United States Dollar and Forty-one Currencies. Available at ⟨http://www.measuringworth.org/exchangeglobal⟩. Accessed 15 May 2012. Column `XR2` is from the Banking and Monetary Statistics, 1914-1941 (FRASER, Federal Reserve Bank of St. Louis). `XR3` has exchange rates from a variety of sources including country Statistical Abstracts and the Federal Reserve Bulletin.  

`stata` has country level trade data merged with the exchange rate data in Stata format. 

`csv` is the directory where the scripts will store the csv file when they are transformed. There will be 3 subdirectories: trade, XRs, and combined.

`scripts` has Stata scripts to combine the individual trade and XR files as well as to aggregate them into single files. 

- `imports_to_stata.do` will take the Excel trade spreadsheets and reshape the import data 
- `XRs_to_stata.do` will do the same for the GFD spreadsheets on exchange rates
- `merge_trade_xrs.do` will combined the country trade and XR files into a country file with both trade and the GFD exchange rate
- `aggregate_dta.do` will aggregate the import, XR, and combined country files into a single dta file for each type.

In addition, there are a few utility files, mainly to convert to importer and exporter names to a standard country code. We use the Correlates of War country code as our standardized code. Not all the trade entities are in the COW country codes so we made up our own codes. 

- `ccode.ado` is a Stata command that I wrote long ago to convert between the main country classification schemes used in IR research. The command will convert between COW, IMF, World Bank, Banks, and country names. There is a help file with more detail on using the command.

## Limitations
For the _International Organization_ article, we made other corrections to the trade data and the exchange rate that are not mentioned here. We will release a subsequent repository with the Stata do files used to create the final dataset as well as the steps to run the analysis. 