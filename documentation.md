# Bilateral Interwar Trade: A new dataset for an old era

We started collecting bilateral interwar trade data in 2010. At the time, despite the importance of trade, there was a surprising lack of data for the interwar period from 1919 to 1939. Since then, the <a href="https://ricardo.medialab.sciences-po.fr/#!/about">RICardo project</a> has publicly released its trade database covering the years 1800 to 1938. Kathleen Barbieri and Omar Keshk have updated their <a href="https://correlatesofwar.org/data-sets/bilateral-trade/">bilateral trade data</a> for the <a href="https://correlatesofwar.org/">Correlates of War</a>. Our data, converted to US dollars with country names standardized, have been incorporated into both of these sources. For any standard study of global trade, both of these datasets are extremely useful. 

We wanted to release the original data collected for a couple of reasons. First, a lot of work into the data collection. Not all of the data made it into our final dataset for one reason or another.

Second, when compiling the data for individual countries into a global dataset, a lot of choices go into the aggregation process. We made many of the choices in compiling the data for _Politics, Institutions, and Trade: Lessons of the Interwar Era_. From deciding how to deal with territories and colonies of the time, to choices of which exchange rate to use, to differences in countries of origin and countries of shipment, there are not clear decisions. By releasing the data as we collected it, before these decisions, we hope to give future researchers the ability to make other decisions as well as to understand the reasons for our decisions. 

This documentation file describes our dataset that uses national-level sources to collect import and export data for the pre-GATT period. The ultimate goal is to link the data with the IMF’s Direction of Trade data that starts in the year 1948 to create a unified collection of trade data for the years 1919 to the present. 

## Background. 
Before World War II, tariffs made up a sizable portion of a government’s income. Many governments, therefore, kept systematic records of their trade in national publications. To the best of our knowledge, no one has previously taken advantage of these publications to collect trade data for the interwar period. 

This is not to say that there have been no attempts to examine the interwar period.  We are aware of three previous attempts, two of which rely on aggregate sources. Both Eichengreen and Irwin (1995) and Wolf and Ritschl (2011) use a League of Nations publication which contains detailed bilateral import and export data for the years 1928, 1935, and 1938 only. Eichengreen and Irwin end up with about 1700 observations for the period while Wolf and Ritschl have about 2700 observations. 

In contrast, Kathleen Barbieri assembled an annual dataset of imports using data from the Statesman’s Yearbook and the League of Nations for the interwar period. Her full data covers the years 1870 to 2006. Both the Statesman’s Yearbook and the League of Nations publications focus largely on major trading partners. Barbieri’s data only includes independent countries and does not contain information on large trading colonies such as India, Indonesia, or the Straits Settlements.

## Data sources

For each country the main source of import data is national-level trade yearbooks. Most yearbooks provide detailed information about a country’s trade with other countries and trade by commodity (and sometimes trade with other countries by commodity). A list of publications that we consulted for each country is available below. When no yearbook existed, we relied on other sources. (For example, Spanish trade yearbooks do not exist between 1936 and 1938.)  Our second source was country statistical yearbooks which sometimes list dyadic trade information. Although usually not as detailed as the trade yearbooks, many yearbooks at least contain information about trade with major trading partners. 

When national level sources were unavailable, we relied on aggregate level sources. The League of Nations published bilateral trade data for a relatively small number of countries for most of the interwar period.  We rely on League data for the following countries: 
Panama		1924-1927
Ecuador		1926
Paraguay		1925
Honduras		1922-1924

These data have been entered into the spreadsheets found in the `trade` folder. 

Absent both country yearbooks and League data, we filled in the follow gaps with Barbieri’s data (which were filled in when putting the final data together for our _World Politics_ article analysis and are not reflected in these data):

Spain	1923, 1936-1938
Portugal	1935
Germany	1921-1922
Belgium	1934-1937
Hungary	1937
Czechoslovakia	1934-1936
Italy	1934-1937
Finland	1934-1938

Barbieri collected data from the League of Nations and from the Statesman’s Yearbook. She also has data for some dyads that are not listed in national publications. We adopted the following coding rules to fill in our data. If the national level source had an “other” category we used the Barbieri data to supplement our data. We also used Barbieri data to supplement our data if the national level source combined countries that Barbieri broke out. For example, the United States in the early 1920s combined Albania and Yugoslavia import data. Barbieri has U.S. imports from Albania and Yugoslavia separated so we used Barbieri to fill in our data. If, on the other hand, our national level data did not have another category and did not clearly aggregate countries we did not use the Barbieri data.

## Data structure

The structure of each trade spreadsheet should follow a standard template. Column B contains the country/territory imported from or the country/territory exported to (depending on the worksheet). Rather than translating the exporting or importing country into English, we enter the name as in the document. Column C (labeled notes) will have the English translation of the name when it is not obvious.

The first row contains the year the trade took place. The second row shows the magnitude of trade. Sometimes imports or exports were required as currency amounts, sometimes in the thousands, and sometimes in the millions. This row allows us to ensure that the all values are in the same magnitude when aggregated. The third row shows the currency of the trade values which allows proper conversion to US dollars. (For example, sometimes Honduras imports are in US dollars, sometimes in gold, and sometimes in Lempiras.) 

At the bottom of each page, there are usually rows devoted to other notes such as the source of the data, whether the data cover a fiscal year or calendar year, and whether the trade is expressed as "country of origin" or "country of destination." 

The bottom of each page also contains checks to make sure the data has been entered correctly. For each year, we compare the summed value of trade with the total listed in the report to make sure that they are equal. 


We note here some potential problems.  The first is distinguishing between country of origin or production and the country of shipment or consignment. During the interwar period, some countries measured imports based on their country of production or origin while other countries valued them according to the country of consignment or the country from which the imports were shipped. Some countries changed from the country of consignment to the country of origin in the middle of the period. As long as a uniform tariff rate applies to the goods of all countries, the country of origin does not matter to an importer.  The same tariff would apply whether the good shipped from Switzerland or France. Once a country starts imposing different tariff rates on different countries, the country of origin becomes important because of the possibility of transshipment. If Belgium, for instance, has a lower tariff on some products from France than for the same Swiss products, Swiss traders would have an incentive to ship their products through France. By the 1930s, most countries listed imports from the country of origin.

For this analysis, differences between country of origin and country of production are not very large. For the larger countries covered in this paper, the country of origin data tends to be very similar to the country of production data. In general, smaller countries with weak or non-existent transportation systems are the ones that show a large difference between the country of origin and country of shipment. When a publication listed both the country of origin and the country of shipment we used data on the country of origin. We also collected information, when possible, on whether the imports were measured by country of origin or by country of shipment.

A second issue is the definition of countries. Many trade publications were very specific about trading partners, including data from parts of larger countries (for example, breaking out Scotland, Wales, and England). In general, we have aggregated any trade data from an exporter the Correlates of War regards as part of another country while keeping trade from colonies separate. So, for example, trade reported from Scotland, Northern Ireland, or Wales has been added to the trade of the United Kingdom; trade from areas such as Jamaica or Kenya remain separate. Besides the UK components, we add the Canary Islands to Spain’s trade; the Azores and Madeira to Portugal; we also combine Asian and European Turkey, Memel and Lithuania, Asian and European Russia; and Belgium and Luxembourg. Eventual states of the U.S. that were still colonies at the time (i.e., Hawaii and Alaska) were kept separate.

## Variables in the data.

In this section, we describe the setup of the data, focusing on a description of the variables. The dataset is a yearly dyadic dataset that covers the period 1919 to 1949. Countries are identified using the Correlates of War numeric country code. Imports and exports are described in relation to country A. So imports are the imports into country A from country B while exports are country A’s exports to country B.

Most of the trade data we collected was in national currencies and have to converted into a common currency. The trade data also varied in the currency units in which it was expressed. Some countries listed the actual value of trade while other countries listed the value in the thousands or the millions. The variables imp and exp contain the value of imports and exports, respectively as reported in the publication, without any conversion to US dollars or to a common unit. 

We used several sources for the exchange rates to US dollars. Our preferred conversion was using the exchange rates from the Global Financial Database with some corrections (xr_gfd). We include the different exchange rates we use in the dataset. In all cases, the exchange rate is the number of local currency to buy one US dollar. In 1933, for example, one US dollar was worth about 0.238 British pounds. 

## Main national publications used for the trade data
- `Albania` - _Statistika tregtare e importacjon-it e eksportacjon-it_; _Statiske e Tregtis se Jashtme te Mbretnis Shqiptare_
- `Argentina` - _Anuario del Comercio Exterior_
- `Australia` - _Oversea trade: bulletin. Australian statistics of oversea imports and exports and customs and excise revenue_; _Oversea trade and customs and excise revenue_
- `Austria` - _Statistik des auswartigen handels osterreichs_
- `Belgium` - _Tableau annuel du commerce avec les pays etrangers_; _Annuarie Statistique de la Belgique_
- `Bolivia` - _Comercio Especial de Bolivia_; _Anuario de los anos : Comercio Exterior_
- `Brazil` - _Commercio Exterior do Brasil_
- `Bulgaria` - _Commerce avec les pays etrangers_
- `Canada` - Barbieri; Trade of Canada, Year ended Dec 31, 1950_
- `Chile` - _Estadistica Anual Vol VII: Comercio Exterior_; _Anuario Estadistico_
- `China` - _Statistics of China's Foreign Trade during the Last Sixty-five Years; Trade of China_
- `Colombia` - _Anuario Estadistico: Comercio Exterior_
- `Costa Rica` - _Anuario Estadistico_
- `Cuba` - _Importacion y Exportacion de la Republica de Cuba_; _Comercio Exterior_
- `Czechoslovakia` - _Statistiches Handbuch_; _Commerce Exterieur de la Republique Tchecoslovaque_; _Foreign Trade of the Czechoslovak Republic_
- `Denmark` - _Handelsstatistiske meddelelser_; _Statistisk Årbog_
- `Dominican Republic` - _Report of the Nth Fiscal Period, Dominican Customs Receivership_
- `Ecuador` - _Comercio Exterior del Ecuador en la decade 1916 a 1925_; _League of Nations Memorandum on International Trade and Balance of Payments_; _Informe que el Ministro de Hacienda Y Credito Publico_; _Ecuador en Cifras 1938-42_
- `Egypt` - _Annual Statement of the Foreign Trade of Egypt_
- `El Salvador` - _Anuario Estadistico_; _Estadistica de Comerico Exterior_
- `Finland` - _Utrikeshandel: Arspublikation_
- `France` - _Tableau general de la navigation maritime et des transports_; _Annuaire Statistique_
- `Germany` - _Statistisches Jahrbuch fur das Deutsche Reich_; _Monatliche Nachweise uber den auswartigen Handel Deutschlands_
- `Greece` - _Statistique du commerce special de la Greece_; League of Nations
- `Guatemala` - _Memoria; Estadistica Nacional, Revista mensual (Agosto de 1927)_
- `Haiti` - _Annual Report of the Fiscal Department for the Fiscal Year_
- `Honduras` - _Memoria del secretario de estado en el despatcho de Hacienda y credito public_; League of Nations; _Boletin de la Camara de comercio_
- `Hong Kong` - _Blue Book_
- `Hungary` - _Hungarian Commerce and Industry for the Year_; _Commerce exterieur de la Hongrie en_; _Annuaire Statistique Hongrois_; _Statisztikai Evkonyv 1949-1955_
- `India` - _Annual Statement of the Sea-Borne Trade of British India_
- `Indonesia` - _Verslag van bestuur en staat van Nederlandsch-Indie, Suriname en Curacao van_;  _Indisch Verslag_
- `Ireland` - _Trade Statistics_; _Database of Irish Historical Statistics_
- `Italy` - _Anuario Statistico Italiano_; Barbieri
- `Jamaica` - _Blue Book_; _Trade Report_
- `Japan` - _Nihon gaikoku bo¯eki nenpyo (Annual return of the foreign trade of Japan)_
- `Malaysia` - _Foreign imports and exports_
- `Mexico` - _Anuario estadístico del comercio exterior de los Estados Unidos Mexicanos_; _Estadística del comercio exterior_; _Anuario estadístico, comercio exterior y navegación_
- `Netherlands` - _Jaarstatistiek van den in-, uit- en doorvoer_
- `New Zealand` - _Statistics of Trade and Shipping_; _Statistical Report on the External Trade of New Zealand_
- `Nicaragua` - _Report of the Collector-General of Customs_
- `Norway` - _Norges Handel_
- `Panama` - _League of Nations Memorandum on International Trade and Balance of Payments_; _Boletin_; _Anuario de comercio exterior_
- `Paraguay` - _Comercio Exterior del Paraguay Anos 1921-1927_; _League of Nations Memorandum on International Trade and Balance of Payments_; _Memoria_
- `Peru` - _Estadistica del Comercio Especial Del Peru_; _Extracto Estadistico Del Peru 1940_; _Anuario del Comercio Exterior_
- `Philippines` - _Annual Report of the Insular Collector of Customs_; _Yearbook of Philippine Statistics_
- `Poland` - _Annuaire du commerce extérieur de la République Polonaise_
- `Portugal` - _Comércio externo_
- `Romania` - _Anuarul Statistic al Romaniei_
- `South Africa` - _Annual statement of the trade and shipping_; _Trade of the Union of South Africa, and South-West Africa_
- `Spain` - _Estadistica del Comercio Exterior de Espana_; _Resumen Mensual de Estadistica del Comercio Exterior de Espana_; Barbieri
- `Sri Lanka` - _Ceylon Blue Book_
- `Sweden` - _Handel Berattelse for ar_
- `Switzerland` - _Schweiz. Handelsstatistik. Jahresbericht._
- `Thailand (Siam)` - _Annual statement of the foreign trade and navigation of the Kingdom of Thailand_
- `Turkey` - _Statistique Annuelle du Commerce Exterieur de la Turquie_; _Annuaire Statistique_
- `United Kingdom` - _Annual Statement of the Trade of the United Kingdom_
- `United States` - _United States Statistical Abstract_
- `USSR` - _Vneshni︠a︡i︠a︡ torgovli︠a︡ SSSR za 1918-1940 gg. : statisticheskiĭ obzor_
- `Uruguay` - _El Anuario Estadistico del Uruguay_; _Comercio exterior del Uruguay_
- `Venezuela` - _Esatdistica Mercantil y Maritima_
- `Yugoslavia` - _Statistique du commerce exterieur du royaume de Yougoslavie_