*** General recode of country names to COW codes
*** Concentrating on interwar

capture gen ccode2 = .
replace ccode2 = 681 if exporter=="Aden" | exporter=="Aden'as" | exporter=="Aden and Dependencies" | exporter=="Adena" 
   replace ccode2 = 6800 if exporter=="Socotra" | exporter=="Sokotra" | exporter=="Socotora" 
   replace ccode2 = 6813 if exporter=="Hadramaut" | exporter=="Hadramut" 
replace ccode2 = 700 if (regexm(exporter,"Afghan") | regexm(exporter,"Afgan")) | exporter=="Afeganistao"
replace ccode2 = 530 if exporter=="Ethiopia" | exporter=="Etiopia" | exporter=="Abyssinia" | exporter=="Abyssina" | exporter=="Abisynja" | exporter=="Abessinien" /*
   */ | exporter=="Abisinija" | exporter=="Abisinia" | exporter=="Ethiopie (Abyssinie)" | exporter=="Abyssinie" | exporter=="Habes" | exporter=="Ethiopie"  /*
   */ | exporter=="Etiopien" | exporter=="Ethiopie" | exporter=="Ethiopie (Abessinie)" 
replace ccode2 = 3 if exporter=="Alaska" | exporter=="Alasca" 
replace ccode2 = 339 if exporter=="Albania" | exporter=="Albanja" | exporter=="Albanien" | exporter=="Albanie"  | exporter=="Albanija"
replace ccode2 = 615 if exporter=="Algeria" | exporter=="Algerie" | exporter=="Algerit" | exporter=="Argelia" | exporter=="Algier" | exporter=="Algerien" /*
  */ | exporter=="Alzyras" | exporter=="Alzir" | exporter=="Algeriet" | exporter=="Alzira" 
replace ccode2 = 232 if exporter=="Andorra"
replace ccode2 = 675 if exporter=="Arabia" | exporter=="Arabien" | exporter=="Arabie" | exporter=="Arabja" | exporter=="Arabija"
  replace ccode2 = 690 if exporter=="Kuwait" | exporter=="Koweit"
  replace ccode2 = 663 if exporter=="Jordan" | exporter=="Transjordan" | exporter=="Transjordanie" | exporter=="Trans-Jordan" | exporter=="Urdun"  /*
    */ | exporter=="Transjordania" | exporter=="Trans-jordan"
replace ccode2 = 160 if exporter=="Argentina" | regexm(exporter,"Argentine") | exporter=="Argentinien" | exporter=="Argjentine" | exporter=="Argentinie" /*
  */ | exporter=="Argentiina" | exporter=="Arjantin" 
replace ccode2 = 371 if exporter=="Armenia"
replace ccode2 = 900 if exporter=="Australia" | exporter=="Australja" | exporter=="Australija" | exporter=="Australie" | exporter=="Australien" | exporter=="Avusturalya" /*
  */ | exporter=="Australia and Tasmania" | exporter=="Australsky Svaz" | exporter=="Australischer Bund" | exporter=="Australischen Bund, dem" /*
  */ | exporter=="Ausralia ellers" | exporter=="Australien forovrig" | exporter=="Australlandet"
replace ccode2 = 305 if exporter=="Austria" | exporter=="Austrja" | exporter=="Austrija" | exporter=="Autriche" | exporter=="Osterrike" | exporter=="Osterreich" /*
  */ | exporter=="Austrie" | exporter=="Austriche" | exporter=="Oostenrijk" | exporter=="Rakousko" | exporter=="Oesterreich"
replace ccode2 = 300 if exporter=="Austria-Hungary" | exporter=="Austria-Hungria" | exporter=="Autriche-Hongrie" | exporter=="Oostenrijk-Hongarije"  | exporter=="Austria Hungria" /*
  */ | exporter=="Autric-Hongrie"
replace ccode2 = 400 if exporter=="Azores" | exporter=="Islas Azores" | exporter=="Azores and Maderiea" | exporter=="Azores and Madeira" 
replace ccode2 = 31 if exporter=="Bahamas"
replace ccode2 = 692 if exporter=="Bahrain" | exporter=="Bahrein" | exporter=="Bahrain Island" | exporter=="Bahrein Island" | exporter=="Bahrein Islands" /*
  */ | exporter=="Bahreyn" | exporter=="Iles Bahrein" | exporter=="Wyspy Bahrein" 

replace ccode2 = 53 if exporter=="Barbados"
replace ccode2 = 211 if exporter=="Belgica" | exporter=="Belgium" | exporter=="Belgja" | exporter=="Belgija" | exporter=="Belgia" | exporter=="Belgique" /*
  */ | exporter=="Belgjike" | exporter=="Belgien" | exporter=="Belgie" | exporter=="Belgio" 
  replace ccode2 = 211 if exporter=="U-E Belgo-Luxembourg" | exporter=="Belgie s Lucembursken" | exporter=="Belgica y Luxemburgo" | exporter=="Uniao Belgo-Luxemburguesa" /*
  */  | exporter=="Belgie en Luxemburg" | exporter=="Belgica-Luxemburgo" | exporter=="Union Belgo-luxemb" | exporter=="Belgia si Luxemburg" | exporter=="Belgia og Luxembourg" /*
  */  | exporter=="Belgium-Luxembourg" | exporter=="Belgique-Luxembourg" | exporter=="Belgien-Luxemburg" | exporter=="Belgien-Luxemborg"
replace ccode2 = 490 if exporter=="Belgian Congo" | exporter=="Congo belge" | exporter=="Congo, Belgian" | exporter=="Belgian Kongo" | exporter=="Congo Belga" /*
  */ | exporter=="Congo Belge" | exporter=="Belgisch Kongo" | exporter=="Belgiska Kongo" | exporter=="Kongo Belgijskie" | exporter=="Congo Belgia" /*
  */ | exporter=="Belgisk Kongo" | exporter=="Kongo, Belgisch-" | exporter=="Kongo (Belgijas)" | exporter=="Belgish Kongo" | exporter=="Belg Kongo" /*
  */ | exporter=="Belgisch-Kongo" | exporter=="Belgu Kongo"
replace ccode2 = 515 if exporter=="Ruanda-Urundi" 
replace ccode2 = 80 if exporter=="Belize" | exporter=="British Honduras" | exporter=="Honduras Britanicas" | exporter=="Britisk Honduras" | exporter=="Honduras Britanica" /*
  */ | exporter=="Honduras Brytyjski" | exporter=="Honduras (British)" | exporter=="Belice" | exporter=="Brittiska Honduras" | exporter=="Honduras C.I. De A." /*
  */ | exporter=="Britisch-Honduras" | exporter=="Honduras, Brit kol" 
replace ccode2 = 30 if exporter=="Bermuda" | exporter=="Bermudas" 
replace ccode2 = 145 if exporter=="Bolivia" | exporter=="Boliwja" | exporter=="Bolvien" | exporter=="Bolivie" | exporter=="Bolivien" | exporter=="Bolivija"

replace ccode2 = 852 if exporter=="Borneo (Dutch)" | exporter=="Dutch Borneo" | exporter=="Borneo, Dutch"
replace ccode2 = 140 if exporter=="Brasil" | exporter=="Brazil" | exporter=="Brazylja" | exporter=="Brazilija" | exporter=="Brasilien" | exporter=="Bresil" /*
  */ | exporter=="Brazilie" | exporter=="Brasile" | exporter=="Brazilia" | exporter=="Brezilya" | exporter=="Brasilie" | exporter=="EU do Brasil"
replace ccode2 = 835 if exporter=="Brunei" 
replace ccode2 = 355 if exporter=="Bulgaria" | exporter=="Bulgarja" | exporter=="Bulgarien" | exporter=="Bulgarija" | exporter=="Bulgarie" | exporter=="Bullgarie" /*
  */ | exporter=="Bulgarije" | exporter=="Bugarska" | exporter=="Bulharsko" | exporter=="Bulgary"
replace ccode2 = 775 if exporter=="Burma" | exporter=="Birmania" | exporter=="Burmah" | exporter=="Birma" | exporter=="Birmanya" | exporter=="British Burma"
replace ccode2 = 20 if exporter=="Canada" | exporter=="Kanada" | exporter=="Kaanada" | exporter=="Canada og Newfoundland"
replace ccode2 = 410 if exporter=="Canary Islands" | exporter=="Canaries" | exporter=="Islas Canarias" | exporter=="Wyspy Kanaryjskie" | exporter=="Kanarischen Inseln" /*
  */ | exporter=="Kanarioiene" | exporter=="Canarias" | exporter=="Kanarieoarna" | exporter=="Tenerife" | exporter=="Teneriffe"  | exporter=="Kanarijas Salas"  /*
  */ | exporter=="Kanaru salos"
replace ccode2 = 402 if exporter=="Cape Verde" | exporter=="Cape Verde Islands" | exporter=="Cap Vert" | exporter=="Cabo Verde" | exporter=="Cap vert"
replace ccode2 = 780 if exporter=="Ceylan" | exporter=="Ceylon" | exporter=="Ceilon" | exporter=="Cejlon" | exporter=="Ceilan" | exporter=="Seylan" /*
  */ | exporter=="Ceilao" | exporter=="Ceilonas" | exporter=="Ceilona" | exporter=="Ceylon and dependencies" 


replace ccode2 = 155 if exporter=="Chile" | exporter=="Cile" | exporter=="Chili" | exporter=="Cili" | exporter=="Sili" 
replace ccode2 = 710 if exporter=="China" | exporter=="Chiny" | exporter=="Chine" | exporter=="Kina" | exporter=="Kine" | exporter=="Kinija" | exporter=="Cina"  /*
  */ | exporter=="Hiina" 
replace ccode2 = 100 if exporter=="Colombia" | exporter=="Columbien" | exporter=="Kolumbija" | exporter=="Colombie" | exporter=="Columbia" | exporter=="Kolumbia" /*
  */ | exporter=="Kolumbie"
replace ccode2 = 94 if exporter=="Costa Rica" | exporter=="Costa Rika" | exporter=="Costarica" | exporter=="Costarika" | exporter=="Costa-Rica" | exporter=="Kosta-Rika" /*
  */ | exporter=="Kostarika" | exporter=="Kosta Rika" 
replace ccode2 = 351 if exporter=="Crete" 
replace ccode2 = 40 if exporter=="Cuba" | exporter=="Kuba"
replace ccode2 = 352 if exporter=="Cyprus" | exporter=="Chypre" | exporter=="Chipre" | exporter=="Kipar" | exporter=="Kibris" | exporter=="Cypern" /*
  */ | exporter=="Kypras" | exporter=="Cypr" | exporter=="Kipra" | exporter=="Cipru" 
replace ccode2 = 315 if exporter=="Czechoslovakia" | exporter=="Tchecoslovaquie" | exporter=="Checoslovaquia" | exporter=="Cekoslovakija" | /*
  */ exporter=="Tschechoslowakei" | exporter=="Tsjekkoslovakia" | exporter=="Checoeslovaquia" | exporter=="Cekosllovaki" | exporter=="Czecho-Slovakia" /*
  */ | exporter=="Tcheco-Slovaquie" | exporter=="Tchec-Slovaquie" | exporter=="Tcheco-Slovaquia" | exporter=="Czechoslowacja" | exporter=="Tshehho-Slovak" /*
  */ | exporter=="Cecoslovacchia" | exporter=="Czecho Slovakia" | exporter=="Checo-Eslovaquia" | exporter=="Czechoslowacja" | exporter=="Cehoslovacia" /*
  */ | exporter=="Tjeckoslovak" | exporter=="Czeco Slovakia" | exporter=="Tcheco Slovaquia" | exporter=="CSR" | exporter=="Tjekkoslovakiet" /*
  */ | exporter=="Zschechoslowakei" | exporter=="Tsj-Slowakije" | exporter=="Chechoslovakia" | exporter=="Tsjechoslowakije" | exporter=="Tchechoslovaquie" /*
  */ | exporter=="Tjeckoslovakien"
  replace ccode2 = 316 if exporter=="Boheme et Moravie" | exporter=="Prot de Bohemia y Moravia" | exporter=="Bohemia" | exporter=="Bohemia o Moravia" /*
  */ | exporter=="Bohmen-Mahren" | exporter=="Bohemia y Moravia" | exporter=="Boheme-Moravie" | exporter=="Bohemia & Moravia" | exporter=="Bohemie et Moravie" 
  replace ccode2 = 317 if exporter=="Slovakia" | exporter=="Slovaquie" | exporter=="Slovakien" | exporter=="Eslovaquia" | exporter=="Slowakije"
replace ccode2 = 291 if exporter=="Danzig" | exporter=="Dantzig" | exporter=="Dansig" | exporter=="Danciga" 

replace ccode2 = 390 if exporter=="Dinamarca" | exporter=="Denmark" | exporter=="Danja" | exporter=="Danmark" | exporter=="Danemark" | exporter=="Danijga" /*
  */ | exporter=="Danimarke" | exporter=="Danimarca" | exporter=="Denemarken" | exporter=="Danska" | exporter=="Danemarca" | exporter=="Danija"  /*
  */ | exporter=="Dansko" | exporter=="Denmark and Faroe" | exporter=="Daani"
  replace ccode2=11 if exporter=="Faroe Islands" | exporter=="Faeroyane" | exporter=="Faeroerne" 
replace ccode2 = 42 if exporter=="Dominican Republic" | exporter=="Santo Domingo" | exporter=="Dominikanische Republik" | exporter=="San Domingo" /*
  */ | exporter=="Dominicaine (Republique)" | exporter=="Republica Dominica" | exporter=="St. Domingo" | exporter=="Dominikanska Republika" /*
  */ | exporter=="Republique Dominicaine" | exporter=="Dominikanischen Republik" | exporter=="Dominikonu respublika" | exporter=="Republica Dominicana" /*
  */ | exporter=="Dominic. Republiek" | exporter=="Domingo-Republikken" | exporter=="Saint-Domingue" | exporter=="Dominikana republika" /*
  */ | exporter=="Republ Dominicaine" 
replace ccode2 = 130 if exporter=="Ecuador" | exporter=="Ekuador" | exporter=="Equador" | exporter=="Equateur" | exporter=="Ekvadoras" /*
  */ | exporter=="Ekvadora"

replace ccode2 = 651 if exporter=="Egypt" | exporter=="Egipto" | exporter=="Egipt" | exporter=="Egypte" | exporter=="Agypten" | exporter=="Egipte" | exporter=="Egjypt" /*
  */ | exporter=="Aigiptas" | exporter=="Egypto" | exporter=="Egipat" | exporter=="Aegypten" | exporter=="Egypten" | exporter=="Egitto" | exporter=="Egiptus" | exporter=="Misir"
replace ccode2 = 92 if exporter=="El Salvador" | exporter=="Salvador" | exporter=="San Salvador" | exporter=="San Salvadoras" | exporter=="Salwador" 
replace ccode2 = 366 if exporter=="Estonia" | exporter=="Estonja" | exporter=="Estonie" | exporter=="Esthland" | exporter=="Esthonie" /*
  */ | exporter=="Esthonia" | exporter=="Estland" | exporter=="Estija" | exporter=="Igaunija" | exporter=="Estonsko"
replace ccode2 = 1163 if exporter=="Falkland Islands" | exporter=="Falkland" | exporter=="Falkland islands" | exporter=="Malvinas" | exporter=="Falklandsoiene" /*
  */ | exporter=="Islas Falkland"
replace ccode2 = 950 if exporter=="Fiji" | exporter=="Fiji Islands" | exporter=="Islas Fidji" 
replace ccode2 = 375 if exporter=="Finland" | exporter=="Finlandia" | exporter=="Finlandja" | exporter=="Finlande" | exporter=="Finnland" | exporter=="Suomija" /*
  */ | exporter=="Finlanda" | exporter=="Somija" | exporter=="Finska" | exporter=="Soome"  | exporter=="Finsko"
replace ccode2 = 220 if exporter=="France" | exporter=="Francia" | exporter=="Francja" | exporter=="Francija" | exporter=="Frankreich" | exporter=="Frankrike" /*
  */ | exporter=="Franca" | exporter=="Prancuzija" | exporter=="Frankrijk" | exporter=="Frankrig" | exporter=="Franta" | exporter=="Francuska" | exporter=="Prantsuse" /*
  */ | exporter=="Francie"
replace ccode2 = 480 if exporter=="French Equatorial Africa" | exporter=="AEF" | exporter=="A.E.F." | exporter=="Afrique equator francaise" /*
  */ | exporter=="Afrique equat francaise" | exporter=="Franz Aquatorialafrika" | exporter=="Afrique Equatoriale francaise" | exporter=="Africa Equatorial Francesa" /*
  */ | exporter=="Africa Ecuatorial Francesa" | exporter=="Afrika, Fransch Equatoriaal" 
  replace ccode2 =484 if exporter=="French Congo" | exporter=="Congo, French" | exporter=="Congo francais" | exporter=="Congo franc"
replace ccode2 = 120 if exporter=="French Guyana" | exporter=="Guyana francesa" | exporter=="Guiana, French" | exporter=="French Guiana" | exporter=="Guyane francaise" /*
  */ | exporter=="Guayana Francesca" | exporter=="Guyana Francesa" | exporter=="Guyana, Fransch" | exporter=="Fransk Guiana" | exporter=="Guayana Francesa" /*
  */ | exporter=="Fr. Guyana" | exporter=="Guiana Francesa" 
replace ccode2 = 810 if exporter=="French Indo-China" | exporter=="Franzosisch Indochina" | exporter=="Indo-Chine francaise" | exporter=="Indo-Chine" /*
  */ | exporter=="French Indo.China" | exporter=="Indo-China" | exporter=="Indochina" | exporter=="Indochiny Francuskie"  | exporter=="Indochine francaise" /*
  */ | exporter=="Indochina Francesa" | exporter=="Fransk Indo-China" | exporter=="Indochina franceza" | exporter=="Indochine Francaise" | exporter=="French Indochina" /*
  */ | exporter=="Fransch Indo-China" | exporter=="Franz Indo-China" | exporter=="Indo-china Francesa" 
    replace ccode2=8151 if exporter=="Cochin China" | exporter=="Kochinchina" 
replace ccode2 = 751 if exporter=="French India" | exporter=="Inde francaise" | exporter=="India Francesa" | exporter=="Indje Francuskie" /*
  */ | exporter=="Indes francaises" | exporter=="Franzosisch Indien" | exporter=="French Possessions in India" | exporter=="Indes Francaises" /*
  */ | exporter=="French possessions in India"
replace ccode2 = 522 if exporter=="French Somaliland" | exporter=="Francuska Somalija" | exporter=="Somalia Francesa"
replace ccode2 = 430 if exporter=="French West Africa" | exporter=="AOF" | exporter=="A.O.F." | exporter=="Africa, French West" | exporter=="Afrique occident, Francaise" /*
  */ | exporter=="Afrique occid francaise" | exporter=="Franzosisch Westafrika" | exporter=="Afrique occidentale francaise" | exporter=="Franz Ostafrika" /*
  */ | exporter=="Afrique occident. Francaise" | exporter=="Africa Occidental Francesa" | exporter=="Francuska Zapadna Afrika" | exporter=="Fransk Vast-afrika" /*
  */ | exporter=="Fransk Vest-Afrika" | exporter=="Afrika, Fransch West-" 
  replace ccode2 = 432 if exporter=="French Sudan" | exporter=="Sudan Frances" | exporter=="Sudan Francuski"
  replace ccode2 = 433 if exporter=="Senegal"
  replace ccode2 = 434 if exporter=="Dahomey" | exporter=="Dahomej" | exporter=="Dahome" 
  replace ccode2 = 439 if exporter=="Gorna Wolta"
replace ccode2 = 255 if exporter=="Germany" | exporter=="Gjermani" | exporter=="Alemania" | exporter=="Allemagne" | exporter=="Allemanha" | exporter=="Niemcy" /*
  */ | exporter=="Tyskland" | exporter=="Germania" | exporter=="Deutschland" | exporter=="Vokietija" | exporter=="Duitsland" | exporter=="Vacija" | exporter=="Alemanha" /*
  */ | exporter=="Duitschland" | exporter=="Union douaniere allemande"  | exporter=="Deustches Reich" | exporter=="Nemecko" | exporter=="Saksa"
  replace ccode2 = 256 if exporter=="Territorio del Saar" | exporter=="Saargebiet" | exporter=="Saar Basin" | exporter=="Sarre" | exporter=="Saar" /*
     */ | exporter=="Saarske uzemi" 
  replace ccode2 = 260 if exporter=="West Germany" | exporter=="Savezna Republika Nemacka" | exporter=="West Tyskland"
  replace ccode2 = 265 if exporter=="East Germany" | exporter=="Nemacka Demokratska Republika" | exporter=="East Tyskland"

replace ccode2 = 231 if exporter=="Gibraltar" 
replace ccode2 = 350 if exporter=="Greece" | exporter=="Grecia" | exporter=="Grecja" | exporter=="Grece" | exporter=="Griekija" | exporter=="Hellas" /*
  */ | exporter=="Griechenland" | exporter=="Greqi" | exporter=="Grakija" | exporter=="Greichenland" | exporter=="Grekland" | exporter=="Griekenland" /*
  */ | exporter=="Graikija" | exporter=="Greka" | exporter=="Recko" | exporter=="Graekenland"   
replace ccode2 = 10 if exporter=="Greenland" | exporter=="Groenlandia" | exporter=="Gronland" | exporter=="Gronnland"  
replace ccode2 = 55 if exporter=="Grenada" | exporter=="Grenade" 
replace ccode2 = 110 if exporter=="British Guyana" | exporter=="Guyana britanica" | exporter=="Guiana (British)" | exporter=="British Guiana" | exporter=="Guyane britannique" /*
  */ | exporter=="Guayana Inglesa" | exporter=="Gujana Brytyjska" | exporter=="Britu Gvijana" | exporter=="Guyana, Engelsch" | exporter=="Britisk Guiana" /*
  */ | exporter=="Brits-Guyana" | exporter=="Britisch Guyana" | exporter=="Guiana, British" | exporter=="Guiana Inglesa"
replace ccode2 = 90 if exporter=="Guatemala" | exporter=="Gvatemala" | exporter=="Guatamala" 
replace ccode2 = 851 if exporter=="New Guinea (Dutch)" | exporter=="Dutch New Guinea" 
replace ccode2 = 41 if exporter=="Haiti" | exporter=="Hayti" | exporter=="Haiti (Republique de)"
replace ccode2 = 4 if exporter=="Hawaii" | exporter=="Islas Hawaii" | exporter=="Havaji" | exporter=="Islas Hawai" | exporter=="Haway" | exporter=="Havaju salas" 
replace ccode2 = 91 if exporter=="Honduras" | exporter=="Honduras (Republique de)" | exporter=="Honduras, Republiek"
replace ccode2 = 720 if exporter=="Hong Kong" | exporter=="Hongkong" | exporter=="Hong-Kong" | exporter=="British Hong Kong" | exporter=="Hongkong'as" /*
  */ | exporter=="Hongkonga" 
replace ccode2 = 310 if exporter=="Hungary" | exporter=="Hungria" | exporter=="Ungarn" | exporter=="Hongrie" | exporter=="Ungarie" | exporter=="Hongarije" /*
  */ | exporter=="Ungern" | exporter=="Ungarija" | exporter=="Vengrija" | exporter=="Madarska" | exporter=="Ungaria" | exporter=="Ungheria" /*
  */ | exporter=="Wegry" | exporter=="Madarsko" 

replace ccode2 = 395 if exporter=="Iceland" | exporter=="Islandia" | exporter=="Islandja" | exporter=="Island" | exporter=="Islandija" | exporter=="Islande" /*
  */ | exporter=="Islanda" | exporter=="Ijsland" 
replace ccode2 = 750 if exporter=="India" | exporter=="Indie" | exporter=="British Indien" | exporter=="British India" | exporter=="Inde britannique" /*
  */ | exporter=="Indes anglaises" | exporter=="Inde" | exporter=="India Inglesa" | exporter=="Indje Brytanskie" | exporter=="Britisk Indien" | exporter=="Britisch indien" /*
  */ | exporter=="Indija" | exporter=="Britu Indija" | exporter=="India Britanica" | exporter=="Indie, Britsch" | exporter=="Indes Anglaises" /*
  */ | exporter=="Brits-Indie" | exporter=="Britisk India" | exporter=="Hindistan" | exporter=="Indostan"

replace ccode2 = 850 if exporter=="Indonesia" | exporter=="Indonezija" | exporter=="Netherlands East Indies" | exporter=="Niederland Indien" /*
  */ | exporter=="Indes neerlandaises" | exporter=="Dutch East Indies" | exporter=="Dutch East India Islands" | exporter=="Hollandsk Ostindien" /*
  */ | exporter=="Java, Sumatra and other parts of Dutch East Indies" | exporter=="Indias Orientales Holandesas" | exporter=="Indonesie" | exporter=="Nederl. Ostind." /*
  */ | exporter=="East Indies, Dutch" | exporter=="Indias orientales holandesas"
    replace ccode2 = 8501 if exporter=="Java" 
    replace ccode2 = 8502 if exporter=="Sumatra"
    replace ccode2 = 8503 if exporter=="Celebes" 
replace ccode2 = 630 if exporter=="Iran" | exporter=="Persia" | exporter=="Persien" | exporter=="Perse" | exporter=="Persja" | exporter=="Persija" /*
  */ | exporter=="Persi" | exporter=="Persie" 
replace ccode2 = 645 if exporter=="Iraq" | exporter=="Irak" | exporter=="Irakas" | exporter=="Mesopotamia" | exporter=="Mesopotamie" | exporter=="Mesopotamien"  /*
  */ | exporter=="Iraque" | exporter=="Iraka" 

replace ccode2 = 205 if regexm(exporter, "Irish Free") | exporter=="Ireland" | regexm(exporter,"Irlandja") | exporter=="Irlanda (Estado Libre)"  /*
  */ | exporter=="Irlande" | exporter=="Eire" | exporter=="Irlanda" | exporter=="Irland" | exporter=="Irske Fristat" | exporter=="Irischen Freistaat" /*
  */ | exporter=="Irlanda , Estado Libre" | exporter=="Irska" | exporter=="Irsko" | exporter=="Ierland" | exporter=="Irlandija/Laisvoji Airijos valstybe" /*
  */ | exporter=="Irischer Freistaat" | exporter=="Irlande Etat libre" | exporter=="Irlandska fristaten"
replace ccode2 = 204 if exporter=="Norra Irland" | exporter=="Nord-Ierland" | exporter=="North Ireland" | exporter=="Irlande del Norte" /*
  */ | exporter=="Irlanda del Norte" 
replace ccode2 = 666 if exporter=="Israel" | exporter=="Izrael" 
replace ccode2 = 325 if exporter=="Italy" | exporter=="Italia" | exporter=="Italie" | exporter=="Italien" | exporter=="Italija" | exporter=="Itali" /*
  */ | exporter=="Itaalia" | exporter=="Sicily" | exporter=="Wlochy"
  replace ccode2 = 326 if exporter=="Trieste" | exporter=="Trst" | exporter=="Triest (Freihasen)"
  replace ccode2 = 3353 if exporter=="Dodecanese" | exporter=="Islas italianas del Mar Egeo" | exporter=="Iles italiennes de la mer Egee" | exporter=="Dodekanesia" /*
  */ | exporter=="Italian Aegean Islands" | exporter=="Dodecaneso" | exporter=="Ilhas Italianas do Mar Egeu" | exporter=="Italya Adalari (Ege)" /*
  */ 
replace ccode2 = 5200 if exporter=="Italian Somaliland" | exporter=="Somalie italienne" | exporter=="Somalilandia italiana" | exporter=="Italijanska Somalija" /*
  */ | exporter=="Somaliland (Italian)" | exporter=="Somalia Italiana"
replace ccode2 = 5201 if exporter=="Italian East Africa" | exporter=="Italienska Ostafrika" | exporter=="Italienisch-Ostafrika" | exporter=="Africa Oriental Italiana"
replace ccode2 = 531 if exporter=="Eritrea" | exporter=="Erythree" | exporter=="Eritreja" | exporter=="Erytrea" | exporter=="Erythree"
replace ccode2 = 51 if exporter=="Jamaica" | exporter=="Jamaika" | exporter=="Isla Jamaica" | exporter=="Jamaique" | exporter=="Jamaica and Dependencies" 
replace ccode2 = 740 if exporter=="Japan" | exporter=="Japon" | exporter=="Japonja" | exporter=="Japana" | exporter=="Japao" | exporter=="Japonija" /*
  */ | exporter=="Japonia" | exporter=="Jaapan" | exporter=="Japonya" | exporter=="Japonsko" | exporter=="Giappone"  | exporter=="Japan (including Formosa)" 

replace ccode2 = 501 if exporter=="Kenya" | exporter=="Kenya Colony" | exporter=="Quenia"
replace ccode2 = 730 if exporter=="Korea" | exporter=="Coree" | exporter=="Corea" | exporter=="Chosen"
replace ccode2 = 367 if exporter=="Latvia" | exporter=="Letonia" | exporter=="Latvija" | exporter=="Lettonie" | exporter=="Lettland" | exporter=="Lotwa" /*
  */ | exporter=="Letland" | exporter=="Lati" | exporter=="Lotyssko"
replace ccode2 = 660 if exporter=="Lebanon" | exporter=="Libano" | exporter=="Libanon" | exporter=="Liban" | exporter=="Liban" | exporter=="Lubnan"
replace ccode2 = 450 if exporter=="Liberia" | exporter=="Liberja" | exporter=="Liberija"
replace ccode2 = 620 if exporter=="Libya" | exporter=="Libia" | exporter=="Libyen" | exporter=="Libija" | exporter=="Libye" | exporter=="Lybia" /*
  */ | exporter=="Libya (Tripolis)"  
replace ccode2 = 368 if exporter=="Lituania" | exporter=="Lithuania" | exporter=="Lithuanie" | exporter=="Litauen" | exporter=="Lituanie" | exporter=="Litwa" /*
  */ | exporter=="Leedu" | exporter=="Litva" | exporter=="Lietava"

replace ccode2 = 212 if exporter=="Luxembourg" | exporter=="Luksemburgu" | exporter=="Luxemburgo" | exporter=="Luxemburg" | exporter=="Luxemb." | /*
  */ exporter=="Luksemburg" | exporter=="Luxemberg" | exporter=="Luksemburga" | exporter=="Grand-Duche de Luxembourg" 
replace ccode2 = 580 if exporter=="Madagascar" | exporter=="Madagaskar" 
replace ccode2 = 401 if exporter=="Madeira" | exporter=="Madeira Islands" 
replace ccode2 = 820 if exporter=="Malaya" | exporter=="British Malaya" | exporter=="Malasia Britanica" | exporter=="Malaya Inglesa" /*
  */ | exporter=="Britisk Malaja" | exporter=="Malaisie britannique" | exporter=="Britisch Malaya" | exporter=="Malesia Brit. (Stab. Dello Stretto)" /*
  */ | exporter=="Malayan Union" | exporter=="Britisk Malakka" | exporter=="Malaja Britanska" | exporter=="Singapore, Straits, etc." | exporter=="Malaisie Britan" /*
  */ | exporter=="Malaya Britanica" | exporter=="Malay States" | exporter=="Malasia Inglesa"
  replace ccode2 = 823 if exporter=="Borneo, British" | exporter=="Sabah" | exporter=="British Borneo" | exporter=="Borneo Brytyjskie" | exporter=="British North Borneo" /*
  */ | exporter=="Borneo (British)"
  replace ccode2 = 824 if exporter=="Sarawak" 
  replace ccode2 = 830 if exporter=="Singapore" | exporter=="Singapur" 
  replace ccode2 = 827 if exporter=="Straits Settlement" | exporter=="Straits Settlements" | exporter=="Etablissements des Detroits (Straits Settlements)" /*
  */ | exporter=="Straits Settlements and Dependencies" | exporter=="Establecimientos del Estrecho"  | exporter=="Estabelecimentos dos Estreitos" /*
  */ | exporter=="Establecimiento del Estrecho" | exporter=="Est. de los Estrechos"
    replace ccode2 = 8271 if exporter=="Malacca"
	replace ccode2 = 8272 if exporter=="Penang" 
  
replace ccode2 = 338 if exporter=="Malta" | exporter=="Malte" | exporter=="Malta and Gozo" 
replace ccode2 = 711 if exporter=="Manchukuo" | exporter=="Mandsjukuo"
replace ccode2 = 590 if exporter=="Mauritius" | exporter=="Maurice" | exporter=="Mauricios" | exporter=="Mauritius and Dependencies" | exporter=="Ilhas Mauricias" /*
  */ | exporter=="Mauricio" | exporter=="Iles Maurice"  | exporter=="Mauricia" 
replace ccode2 = 3363 if exporter=="Memel" | exporter=="Memmelland" | exporter=="Memelland"  
replace ccode2 = 70 if exporter=="Mexico" | exporter=="Mejico" | exporter=="Meksyk" | exporter=="Mexiko" | exporter=="Meksika" | exporter=="Mexique" /*
  */ | exporter=="Meksiko" | exporter=="Mexic" | exporter=="Messico" 

replace ccode2 = 600 if exporter=="French Morocco" | exporter=="Morocco, French" | exporter=="Marruecos Frances" /*
  */ | exporter=="Maroc francais" | exporter=="Marruecos franceses" | exporter=="Morocco (French)" | exporter=="Francouzske Maroko" /*
  */ | exporter=="Fransk Marokko" | exporter=="Marokko, Fransch-" | exporter=="Marrocos frances" | exporter=="Marruecos (Zona francesa)" /*
  */ | exporter=="Maroc franc" 
replace ccode2 = 601 if exporter=="Tangier" | exporter=="Tangier (International Zone)" | exporter=="Morocco, Tanger" | exporter=="Marrocos-Tanger"
replace ccode2 = 602 if exporter=="Spanish Morocco" | exporter=="Marruecos Espanol" | exporter=="Morocco, Spanish" | exporter=="Maroka, Spanijas" /*
  */ | exporter=="Marrocos espanhois" | exporter=="Marokko, Spaansch-" | exporter=="Maroc Espagn" 

replace ccode2 = 210 if exporter=="Netherlands" | exporter=="Holland" | exporter=="Paises Bajos" | exporter=="Holandja" | exporter=="Hollande" /*
 */ | exporter=="Holanda" | exporter=="Holande" | exporter=="Niederlanden" | exporter=="Nederland" | exporter=="Hollanda" | exporter=="Holandija" /*
 */ | exporter=="Olandija" | exporter=="Pays-Bas" | exporter=="Paesi Bassi" | exporter=="Olanda" | exporter=="Nederlanderna" | exporter=="Hollandi" /*
 */ | exporter=="Niederlande" | exporter=="Nizozemsko" | exporter=="Pays Bas"
replace ccode2 = 68 if exporter=="Netherlands Antilles" | exporter=="Dutch West Indies" | exporter=="Antilles neerlandaises" | exporter=="Niederland Westindien" /*
      */ | exporter=="Antilhas Holandesas" | exporter=="Dutch West India Islands" | exporter=="Antillas Holland" | exporter=="Antillas holandesas" /*
      */ | exporter=="Antilles Neerlandais" | exporter=="Antillas Holandesas" | exporter=="West Indies (Dutch)" | exporter=="Antilla Holandesa" | exporter=="Ned. Antillen" /*
      */ | exporter=="Indias Occidentales Holandesas"
  replace ccode2 = 1065 if exporter=="Curacao" | exporter=="Curazao" | exporter=="Kiuraso" | exporter=="Curacau"
  replace ccode2 = 1066 if exporter=="Bonaire"
  replace ccode2 = 1069 if exporter=="Aruba"
replace ccode2 = 920 if exporter=="New Zealand" | exporter=="Nueva Zelandia" | exporter=="Nowa Zelandja" | exporter=="Nouvelle-Zelande" | exporter=="Neu-Seeland" /*
  */ | exporter=="Nova-Zelandia" | exporter=="Novi Zeland" | exporter=="Naujoli Zelandija" | exporter=="Ny Zealand" | exporter=="Neuseeland" /*
  */ | exporter=="Zeeland, Nieuw-" | exporter=="Nueva Zelanda" | exporter=="Nueva Zeland" | exporter=="Nuova Zelanda" | exporter=="Nya Zeeland" /*
  */ | exporter=="Yenizelanda" | exporter=="Nieuw-Zeeland" | exporter=="Nouvell Zelande" | exporter=="Nouvelle Zelande" | exporter=="Novy Zealand" /*
  */ | exporter=="Jaunzelande" | exporter=="Nova Zelandia"
replace ccode2 = 21 if exporter=="Newfoundland" | exporter=="Neufundland" | exporter=="Terranova" | exporter=="Terra Nova" | exporter=="Terranova y Labrador" /*
  */ | exporter=="Newfoundland and Coast of Labrador" | exporter=="Terre-Neuve et Labrador" | exporter=="Newfoundland and Labrador" /*
  */ | exporter=="Njufandlende" 
replace ccode2 = 93 if exporter=="Nicaragua" | exporter=="Nikaragua" | exporter=="Nikaragva"
replace ccode2 = 475 if exporter=="Nigeria" | exporter=="Nigerie" | exporter=="Nigerija" 
replace ccode2 = 385 if exporter=="Norway" | exporter=="Norvege" | exporter=="Noruega" | exporter=="Norwegen" | exporter=="Norvegija" | exporter=="Norvegjie" /*
  */ | exporter=="Noorwegen" | exporter=="Norveska" | exporter=="Norge" | exporter=="Norvegia" | exporter=="Norra" | exporter=="Norsko" | exporter=="Norwegja" /*
  */ | exporter=="Norge med Spetsbergen"
replace ccode2 = 770 if exporter=="Pakistan"
replace ccode2 = 665 if exporter=="Palestine" | exporter=="Palestina" | exporter=="Palastina" | exporter=="Palestyna" | exporter=="Filistin"
replace ccode2 = 95 if exporter=="Panama"
replace ccode2 = 96 if exporter=="Panama Canal Zone" | exporter=="Canal Zone" | exporter=="Zona del Canal" | exporter=="Panama C.Z." 
replace ccode2 = 150 if exporter=="Paraguay" | exporter=="Paragwaj" | exporter=="Paragvajus" | exporter=="Paragvaja" | exporter=="Paraguai"
replace ccode2 = 135 if exporter=="Peru" | exporter=="Perou"
replace ccode2 = 840 if regexm(exporter,"Philippi") | exporter=="Filipinas" | exporter=="Filipiny" | exporter=="Islas Filipinas" | exporter=="Filipinene" /*
  */ | exporter=="Filippinene" | exporter=="Filippinerna" | exporter=="Republica Filipinas" | exporter=="Phillipines" | exporter=="Filipinu salas" /*
  */ | exporter=="Filippinerne" 
replace ccode2 = 290 if exporter=="Poland" | exporter=="Polonia" | exporter=="Polen" | exporter=="Pologne" | exporter=="Polija" | exporter=="Polonie" /*
  */ | exporter=="Poljska" | exporter=="Poola" | exporter=="Polsko" 
  replace ccode2 = 290 if exporter=="Polen en Danzig" | exporter=="Poland and Danzig" | exporter=="Polonia-Dantzig" | exporter=="Pologne-Dantzig" /*
  */ | exporter=="Polen og Danzig" | exporter=="Pologne-Danzig" | exporter=="Polen-Danzig"
replace ccode2 = 235 if exporter=="Portugal" | exporter=="Portugalja" | exporter=="Portogalie" | exporter=="Portogallo" | exporter=="Portugalija" /*
  */ | exporter=="Portugale" | exporter=="Portugalia" | exporter=="Portugal og Madeira" | exporter=="Portugalsko"
  replace ccode2 = 403 if exporter=="Sao Tome e Principe" 
  replace ccode2 = 752 if exporter=="Portuguese India" | exporter=="India Portuguesa" | exporter=="India portuguesa" | exporter=="India, Portuguese" 
  replace ccode2 = 404 if exporter=="Portuguese Guinea"
  replace ccode2 = 540 if exporter=="Angola" | exporter=="Portuguese West Africa" | exporter=="Africa, Portuguese West" | exporter=="Portugiesisch Westafrika" /*
    */ | exporter=="Africa Occidental Portuguesa" | exporter=="Portuguese W Africa" 
  replace ccode2 = 541 if exporter=="Mozambique" | exporter=="Mocambique" | exporter=="Mozambik" | exporter=="Mozambikas" | exporter=="Africa, Portuguese East" /*
    */ | exporter=="Portuguese East Africa" | exporter=="Portugiesisch Ostafrika" | exporter=="Portugisiska Ostafrika" | exporter=="Afrika, Portugeesch Oost-"
replace ccode2 = 6 if exporter=="Puerto Rico" | exporter=="Porto Rico" | exporter=="Portoriko" | exporter=="Porto Riko" | exporter=="Porto-Rico"

replace ccode2 = 585 if exporter=="Reunion"  | exporter=="Reunion Island"  | exporter=="Wyspa Reunion"  | exporter=="Bourbon"
replace ccode2 = 360 if exporter=="Romania" | exporter=="Roumania" | exporter=="Rumania" | exporter=="Rumunja" | exporter=="Rumanien" /*
  */ | exporter=="Roumanie" | exporter=="Rumenija" | exporter=="Rumanie" | exporter=="Rumunija" | exporter=="Rumaenien" | exporter=="Rumunsko" /*
  */ | exporter=="Romenia" | exporter=="Roemenie" 
replace ccode2 = 365 if exporter=="Russia" | exporter=="Russie" | exporter=="USSR" | exporter=="Rusie" | exporter=="Union Sovietica" | exporter=="Rusia" /*
  */ | exporter=="SSSR" | exporter=="URSS" | exporter=="Rusland" | exporter=="Russland" | exporter=="Soviet-Samveldet" | exporter=="Padomju Krievija" /*
  */  | exporter=="Europaeisk Rusland"  | exporter=="Rusia Europea (U.R.S.S.)"  | exporter=="Sovjetunionen, europeiska"  | exporter=="Russia in Europe" /*
  */  | exporter=="U.R.S.S." | exporter=="Sowjet-Russland" | exporter=="Soviet Union" | exporter=="Rusland, Europeesch" | exporter=="Sovjet-Samveldet" /*
  */  | exporter=="Z.S.S.R. (Rosja)" | exporter=="S.S.S.R." | exporter=="Ryssland" | exporter=="Union d. Soz. Sowjet-Republiken"
    replace ccode2 = 3651 if exporter=="Russia in Asia"  | exporter=="Rusia Asiatica (U.R.S.S.)"  | exporter=="Russia-Asiatic"  | exporter=="Rusia Asiatica" /*
      */ | exporter=="Asiatiska Sovjet-unionen" | exporter=="Asiatisk Rusland" | exporter=="Russia Asiatica" | exporter=="Siberia" | exporter=="Siberie" /*
	  */ | exporter=="Sibirien" | exporter=="Rusland, Aziatisch" | exporter=="Vene"
replace ccode2 = 670 if exporter=="Saudi Arabia" | exporter=="Saudi Arabija" | exporter=="Arabie Saodite" | exporter=="Arabie Seoudite" /*
  */ | exporter=="Royaume Arabe Seoudien" | exporter=="Hedzas I Nedzd" | exporter=="Hedjaz and Nejd" | exporter=="Hedschas un Nedschd" /*
  */ | exporter=="Hedjaz" | exporter=="Hedjez-Neyed" | exporter=="Hixhaze" | exporter=="Hedjaz et Nedjed" | exporter=="Hedjaj et Nedjed" /*
  */ | exporter=="Hicaz" 
replace ccode2 = 202 if exporter=="Scotland" | exporter=="Escocia" 
replace ccode2 = 591 if exporter=="Seychelles Islands" | exporter=="Seychelles" | exporter=="Seychelles and Dependencies" | exporter=="Seszele"
replace ccode2 = 800 if exporter=="Siam" | exporter=="Sjam" | exporter=="Siama" | exporter=="Siamas" | exporter=="Siyam" | exporter=="Thailand" /*
  */ | exporter=="Tailandia"
replace ccode2 = 451 if exporter=="Sierra Leone" | exporter=="Sierra-Leone" | exporter=="Sierra Leona" 


replace ccode2 = 521 if exporter=="British Somaliland" | exporter=="Somalilandia Britanica" | exporter=="Somalia Britanica" | exporter=="Somaliland (British)" /*
  */ | exporter=="Somalia Inglesa" | exporter=="Britanska Somalija"
replace ccode2 = 560 if exporter=="Union of South Africa" | exporter=="Union Sudafricana" | exporter=="South African Union" | exporter=="Union Sud-Africaine" /*
  */ | exporter=="Uniao Sul Africana" | exporter=="Union Sud-Africana" | exporter=="Sydafrikanske Union" | exporter=="Union, Sud-Africaine" /*
  */ | exporter=="Union sud-africaine" | exporter=="Juzno Africka Unija" | exporter=="Sudafrikanische Union" | exporter=="Union douan Sud-Africaine" /*
  */ | exporter=="Sud Africa (Unione del)" | exporter=="Union Sud Africana" | exporter=="British South Africa (Union)" | exporter=="Union Sud Africaine" /*
  */ | exporter=="Sydafrikanska Unionen" | exporter=="Union von Sudafrika" | exporter=="Afrika, Unie van Zuid-"  | exporter=="Zwiazek Polundniowo Afrykanski" /*
  */ | exporter=="Syd-Afrika-Sambandet"
  replace ccode2 = 551 if exporter=="Northern Rhodesia" | exporter=="Rhodesia, Northern"
  replace ccode2 = 552 if exporter=="Southern Rhodesia" | exporter=="Rhodesia, Southern"
  replace ccode2 = 553 if exporter=="Nyasaland" | exporter=="Nyassaland Protectorate" | exporter=="Nyasaland Protectorate" | exporter=="British Nyasaland" /*
    */ | exporter=="Niassaland Brytyjski" | exporter=="Niassalandia" | exporter=="Nyassaland"
  replace ccode2 = 554 if exporter=="Rhodesia" | exporter=="Rhodesie" | exporter=="Rodesia" | exporter=="Rhodesias" | exporter=="Rodesias" /*
    */ | exporter=="Southern & Northern Rhodesia" 
  replace ccode2 = 565 if exporter=="S.W. Africa Protectorate" | exporter=="South-West Africa Protectorate" | exporter=="South-West African Territory"
replace ccode2 = 573 if exporter=="British South Africa" | exporter=="Britisk Syd-Afrika" | exporter=="Britisch-Sudafrika" | exporter=="Africa Austral Inglesa" /*
    */ | exporter=="Africa Inglesa del Sur" | exporter=="Britt. Sydafrika" | exporter=="Britisch Sudafrika" | exporter=="Brittiska Syd-Afrika"
  replace ccode2 = 570 if exporter=="Basutoland"
  replace ccode2 = 571 if exporter=="Bechuanaland" | exporter=="Bechuanaland Protectorate"
  replace ccode2 = 572 if exporter=="Swaziland"
replace ccode2 = 230 if exporter=="Spain" | exporter=="Espana" | exporter=="Hiszpanja" | exporter=="Spanien" | exporter=="Espagne" | exporter=="Spanija" /*
  */ | exporter=="Ispanija" | exporter=="Spanje" | exporter=="Spania" | exporter=="Spagna" | exporter=="Hispaania" | exporter=="Spanelsko" /*
  */ | exporter=="Espanha" | exporter=="Hespanha" | exporter=="Spania og Kanarioiene" | exporter=="Spania undt Kanarioiene"

replace ccode2 = 1029 if exporter=="St Pierre and Miquelon" | exporter=="San Pierre and Miquelon" | exporter=="Saint-Pierre et Miquelon" /*
  */ | exporter=="St. Pierre and Miquelon" | exporter=="Miquelon y St. Pierre" | exporter=="S Pedro e Miquelon" | exporter=="St Pierre og Miquelon"

replace ccode2 = 625 if exporter=="Anglo-Egyptian Sudan" | exporter=="Sudan" | exporter=="Anglu Sudanas" | exporter=="Soudan" | exporter=="Anglo Egyptian Sudan" /*
  */ | exporter=="Sudan Anglo-Egipcio" | exporter=="Sudan Anglo-Egipski" | exporter=="Sudan Brytanski" | exporter=="British Soudan" /*
  */ | exporter=="Anglo-Egyptian Soudan" | exporter=="Englisch-agyptischer Sudan" | exporter=="Soudan Anglo-Egyptien" | exporter=="Sudao Anglo-Egipcio" /*
  */ | exporter=="Britansko-Egipatski Sudan" | exporter=="Engelsk-egyptisk Sudan" | exporter=="British Sudan" | exporter=="Sudan Anglo Egipcio" /*
  */ | exporter=="Soudan Brit" | exporter=="Soudan Angl Egyptien" | exporter=="Soudan anglo-egyptien" | exporter=="Br.-egypt Sudan" | exporter=="Sudan Anglo-egipcio" 
replace ccode2 = 115 if exporter=="Suriname" | exporter=="Surinam" | exporter=="Guyana holandesa" | exporter=="Guiana, Dutch" | exporter=="Dutch Guiana" /*
  */ | exporter=="Guyane neerlandaise (Surinam)" | exporter=="Netherlands Guiana" | exporter=="Guayana Holandesa" | exporter=="Guayana, Nederlandsch" /*
  */ | exporter=="Nederlandsk Guiana" 
replace ccode2 = 380 if exporter=="Sweden" | exporter=="Suecia" | exporter=="Schweden" | exporter=="Sueica" | exporter=="Suede" | exporter=="Svedija" /*
  */ | exporter=="Suedie" | exporter=="Zweden" | exporter=="Suedia" | exporter=="Sverige" | exporter=="Svezia" | exporter=="Zviedrija" | exporter=="Svedska" /*
  */ | exporter=="Svedsko" | exporter=="Rootsi" | exporter=="Suecie" | exporter=="Szwecja" 
replace ccode2 = 225 if exporter=="Switzerland" | exporter=="Suiza" | exporter=="Sveits" | exporter=="Schweiz" | exporter=="Suisse" | exporter=="Sveicarija" /*
  */ | exporter=="Svicer" | exporter=="Suissa" | exporter=="Zwitserland" | exporter=="Svizzera" | exporter=="Elvetia" | exporter=="Sveice" | exporter=="Svajcarska" /*
  */ | exporter=="Svycarsko" | exporter=="Suica" | exporter=="Szwajcarja"
replace ccode2 = 652 if exporter=="Syria" | exporter=="Syrie" | exporter=="Suriye" | exporter=="Siria" | exporter=="Syrja" | exporter=="Syrija" | exporter=="Syrien" /*
  */ | exporter=="Sirija" 

replace ccode2 = 510 if exporter=="Tanganyika" | exporter=="Tanganyika Territory" | exporter=="Tanganyica" | exporter=="Tanganika" | exporter=="Tanganiyka" /*
  */ | exporter=="Tanganiica" | exporter=="Tanganyea" | exporter=="Tanganica" | exporter=="Tanganyika Protectorate" 
replace ccode2 = 601 if exporter=="Tangier" | exporter=="Tanger" 

replace ccode2 = 52 if exporter=="Trinidad and Tobago" | exporter=="Trinidad" | exporter=="Trinidad y Tobago" | exporter=="Trinite et Tobago" /*
  */ | exporter=="Trinidad y Tabago" | exporter=="Trinidad e Tobago" 
replace ccode2 = 6203 if exporter=="Tripoli" | exporter=="Tripolitaine" | exporter=="Trypolitanja" 

replace ccode2 = 616 if exporter=="Tunisia" | exporter=="Tunisie" | exporter=="Tunis" | exporter=="Tunez" | exporter=="Tunisien"  | exporter=="Tunesien" 
replace ccode2 = 640 if exporter=="Turkey" | exporter=="Turquia" | exporter=="Turcja" | exporter=="Turqi" | exporter=="Turkei" | exporter=="Turquie" /*
  */ | exporter=="Turcija" | exporter=="Turkija" | exporter=="Turcia" | exporter=="Tyrkia" | exporter=="Turquia Asiatica" | exporter=="Turkey in Asia" /*
  */ | exporter=="Turchia" | exporter=="Turkije, Aziatisch" | exporter=="Turkije" | exporter=="Turkiet" | exporter=="Turkiet, asiat" /*
  */ | exporter=="Turkey, Asiatic" | exporter=="Turska" | exporter=="Turgi" | exporter=="Turecko" | exporter=="Asiatic Turkey" | exporter=="Turkey (in Asia)" 
replace ccode2 = 641 if exporter=="Turquia Europea" | exporter=="Turkey in Europe" | exporter=="Turkije, Europeesch" | exporter=="Turkiet, europ." /*
  */ | exporter=="Turkey, European" | exporter=="Europeisk Tyrski"
  replace ccode2 = 6411 if exporter=="Smyrna" | exporter=="Smyrne" 
replace ccode2 = 500 if exporter=="Uganda" | exporter=="Uganda Protectorate" 
replace ccode2 = 200 if exporter=="UK" | exporter=="United Kingdom" | exporter=="Gran Bretana" | exporter=="Reino Unido"  /*
  */ | exporter=="Angli" | exporter=="Grossbritannien" | exporter=="Royaume-Uni" | exporter=="Gra-Bretanha"  /*
  */ | exporter=="Inglise" | exporter=="Grand-Bretagne"  | exporter=="Groot-Britannie" /*
  */ | exporter=="Great Britain" | exporter=="Regno Unito" | exporter=="Storbrittanien"  | exporter=="Storbrittania" /*
  */ | exporter=="Storbrittania og Nord-Irland" | exporter=="Storbritannien o. Nordirland" | exporter=="Didzioji Britanija" | exporter=="Velika Britanija" /*
  */ | exporter=="Grande Bretagne" | exporter=="Grande-Bretagne" | exporter=="Britanie Velka" | exporter=="Groot-Brittannie" | exporter=="Great Britain and Northern Ireland" 
replace ccode2 = 200 if  exporter=="UK and territories under condominium"  | exporter=="Storbritanien o. Irland" | exporter=="Storbritanien" | exporter=="Storbrittanien och Irland" /*
  */ | exporter=="Storbritannien o. Irland"  | exporter=="Storbritannien"
  replace ccode2 = 201 if exporter=="England" | exporter=="Inglaterra" | exporter=="Anglija"  | exporter=="Angleterre" | exporter=="Anglja" | exporter=="Anglia" 
  replace ccode2 = 505 if exporter=="British East Africa" | exporter=="Africa, British East" | exporter=="Africa Oriental Inglesa" /*
    */ | exporter=="Britisch Ostafrika" | exporter=="Zanzibar and Pemba and Kenya Colony" | exporter=="Afrika, British Oost-" /*
    */ | exporter=="British East Africa Protectorate" | exporter=="Britisk Ost-Afrika" | exporter=="Africa Oriental Britanica" /*
    */ | exporter=="Britt. Ostafrika" | exporter=="British ostafrika" | exporter=="Britanska Istocna Afrika" | exporter=="Africa Inglesa del Este" /*
    */ | exporter=="Est Africain Anglais"
  replace ccode2 = 465 if exporter=="British West Africa" | exporter=="Africa, British West" | exporter=="Other British West Africa" /*
    */ | exporter=="Britisch Westafrika" | exporter=="West Africa (British)" | exporter=="Afrika, British West-" | exporter=="Britisk Vest-Afrika" /*
    */ | exporter=="Africa Occidental Britanica" | exporter=="Africa Occidental Inglesa" | exporter=="Brittiska Vastafrika" | exporter=="British Westafrika" /*
    */ | exporter=="Britanska Zapadna Afrika"
  replace ccode2 = 452 if exporter=="Gold Coast" | exporter=="Cote d'Or" | exporter=="Costa do Ouro" | exporter=="Goldkuste" | exporter=="Costa de Oro" | exporter=="Ghana" 
  replace ccode2 = 420 if exporter=="Gambia" 
replace ccode2 = 2 if exporter=="US" | exporter=="United States" | exporter=="Etats-Unis" | exporter=="Estados Unidos" | exporter=="USA"| exporter=="Estados-Unidos" /* 
  */ | exporter=="SAD" | exporter=="Shtetet E B. Te Amerikes" | exporter=="Etats Unis" | exporter=="Etats-Unis d'Amerique" | exporter=="Verenigde Staaten van Noord-Amerika" /*
  */ | exporter=="Forenta staterna" | exporter=="De Forente Stater" | exporter=="Stati Uniti" | exporter=="Statele Unite" | exporter=="Z.-Amerikas Sav. Valstis" /*
  */ | exporter=="Amerika Birlesik devletleri"  | exporter=="Etats-Unis d'Amer" | exporter=="Spojene staty americke" | exporter=="Ber St. v. Amerika" /*
  */ | exporter=="Amerika, Ver. Staten van-" | exporter=="EU da America do Norte" | exporter=="Vereiningte Staaten" | exporter=="Stany Zjednoczone"  | exporter=="Verein. St. v. Amerika" /*
  */ | exporter=="N.A. Forenta Stater" | exporter=="USA (including Hawaii)" | exporter=="V S N Amerika" | exporter=="Uhisriigid"
  replace ccode2 = 5 if exporter=="Virgin Islands of US" | exporter=="American Virgin Islands" | exporter=="US Virgin Islands" | exporter=="Virgin Islands (US)"
replace ccode2 = 165 if exporter=="Uruguay" | exporter=="Urugwaj" | exporter=="Urugvaj" | exporter=="Urugvaja" | exporter=="Uruguai"
replace ccode2 = 935 if exporter=="Nuevas Hebridas" | exporter=="New Hebrides" | exporter=="Nowe Hebrydy" 
replace ccode2 = 101 if exporter=="Venezuela" | exporter=="Venecuela" | exporter=="Wenezuela" 
replace ccode2 = 1050 if exporter=="British West Indies" | exporter=="Britisch Westindien" | exporter=="Windward and Leeward Islands" /*
   */ | exporter=="British West India Islands" | exporter=="Leeward and Windward Islands" | exporter=="Antillas Britanicas" | exporter=="Antilles Anglaises" /*
   */ | exporter=="Antillas Inglesas" | exporter=="Antilles britanniques" | exporter=="Antillas inglesias"
   replace ccode2 = 54 if exporter=="Dominica" 
   replace ccode2 = 56 if exporter=="St Lucia" | exporter=="St. Lucia" | exporter=="Saint Lucia" | exporter=="Santa Lucia" | exporter=="Santa Lucija"
   replace ccode2 = 57 if exporter=="St Vincent" | exporter=="St. Vincent" | exporter=="San Vicente"
   replace ccode2 = 58 if exporter=="Antigua" | exporter=="Barbuda"
   replace ccode2 = 59 if exporter=="Montserrat" 
   replace ccode2 = 60 if exporter=="St Kitts" | exporter=="St Kitts-Nevis" | exporter=="St. Kitts-Nevis"
     replace ccode2 = 1062 if exporter=="Anguilla" | exporter=="Anguila"
   replace ccode2 = 1055 if exporter=="Windward Islands" | exporter=="Windward Island"
   replace ccode2 = 1063 if exporter=="Leeward Islands"
replace ccode2 = 1060 if exporter=="French West Indies" | exporter=="Antillas Francesas" | exporter=="French West India Islands" | exporter=="French Antilles" /*
  */ | exporter=="French West Indies Islands"  | exporter=="Antillas francesas" | exporter=="Antilles francaises" | exporter=="Franzosisch Westindien"
  replace ccode2 = 65 if exporter=="Guadeloupe" | exporter=="Guadalupe" 
  replace ccode2 = 66 if exporter=="Martinique" | exporter=="Martinica"
replace ccode2 = 345 if exporter=="Yugoslavia" | exporter=="Yugoeslavia" | exporter=="Jugoslawja" | exporter=="Yougoslavia" | exporter=="Jugoslawien" /*
  */ | exporter=="Jugosllavi" | exporter=="Jugoslavia" | exporter=="Yugo-Slavia" | exporter=="Jugoslavien" | exporter=="Yougoslavie" | exporter=="Yougo-Slavie" /*
  */ | exporter=="Yugo-Eslavia" | exporter=="Dienvidslavija" | exporter=="Serb-Kroat-Slow" | exporter=="Royaume des Serbes, Croates et Slovenes" | exporter=="Serbia" /*
  */ | exporter=="Serbie" | exporter=="Servia" | exporter=="Serb-Croat-Slovene State" | exporter=="Servie" | exporter=="Serbien" | exporter=="Servia and Montenegro" /*
  */ | exporter=="Yugoslavie" | exporter=="Joego Slavie" | exporter=="Det Serbisk-Kroatisk-Slovenske Rike" | exporter=="Jugo-Slavia" | exporter=="Jugo Slavia" /*
  */ | exporter=="S.H.S." | exporter=="Zuidslavie"
replace ccode2 = 511 if exporter=="Zanzibar" | exporter=="Zanzibar and Pemba"

replace ccode2 = 22 if exporter=="Brittiska Nordamerika" | exporter=="Britisk Nordamerika" | exporter=="Britt. Nordameriica"

*** IN ORDER TO GET COLONY DATA, CREATING SOME GENERAL COLONY VARIABLES FOR EACH METROPOLE
*** THESE WILL ONLY HAVE COUNTRIES THAT CANNOT OTHERWISE BE CLASSIFIED
*** BRITISH = 2000; FRANCE = 2200; GERMAN = 2550; BELGIAN = 2110; NETHERLANDS = 2100; SPAIN = 2300; PORTUGAL = 2350; 
*** ITALIAN = 325; JAPAN = 7400
*** WITHIN GROUPINGS: 1 = CENTRAL AMERICA; 2 = CARIBBEAN; 3 = SOUTH AMERICA; 4 = EUROPE; 5 = AFRICA; 6 = MID EAST; 7 = ASIA; 8 = OCEANIA

replace ccode2 = 1200 if exporter=="Posesiones norteamericanas" | exporter=="Other US Possessions" | exporter=="Posesiones norteamericanas" /*
  */ | exporter=="US posessoes" 
replace ccode2 = 2000 if exporter=="Other British posessions" | exporter=="Other British Possessions" | exporter=="Possessoes Britannicas" ///
     | exporter=="Other parts of the British Empire" | exporter=="Posesiones inglesas" | exporter=="Colonies Anglaises" | exporter=="Autres colonies Anglaises" ///
     | exporter=="possessoes britanicas (outras)" | exporter=="Other British possessions" | exporter=="Other British countries" ///
	 | exporter=="Otras Posesiones Inglesas" 
     
replace ccode2 = 2100 if exporter=="Posesiones holandesas" | exporter=="Possessoes Hollandezas" | exporter=="Dutch possessions" ///
     | exporter=="Colonies Hollandaises" | exporter=="Dutch Possessions" | exporter=="Poseciones Holandesas" 
replace ccode2 = 2110 if exporter=="Posesiones belgas" | exporter=="Possessoes Belgas"

replace ccode2 = 2200 if exporter=="Other French Possessions" | exporter=="Posesiones francesas" | exporter=="Possessoes Francezas" ///
     | exporter=="Colonies francaises (autre que l'Algerie)" | exporter=="Autres colonies francaises" | exporter=="French colonies" ///
     | exporter=="French Possessions" | exporter=="Otras Posesiones Francesas" 
replace ccode2 = 2300 if exporter=="Other Spanish Possessions" | exporter=="Posesiones espanolas" | exporter=="Spanish Possessions" ///
     | exporter=="Possessoes Hepanholas" | exporter=="Espanha possessoes"
replace ccode2 = 2350 if exporter=="Other Portuguese Possessions" | exporter=="Posesiones portuguesas" | exporter=="Portuguese Posessions" ///
     | exporter=="Possessoes Portuguezas" | exporter=="Portuguese Possessions" | exporter=="Possessoes portuguesas"

replace ccode2 = 2550 if exporter=="Other German Possessions"
replace ccode2 = 3250 if exporter=="Other Italian Possessions" | exporter=="Posesiones italianas" | exporter=="Possessoes Italianas" ///
     | exporter=="Italia possessoes"
replace ccode2 = 3900 if exporter=="Danish Possessions" | exporter=="Posesiones dinamarquesas"
replace ccode2 = 7400 if exporter=="Posesiones jaopnesas"

*** WITHIN GROUPINGS: 1 = CENTRAL AMERICA; 2 = CARIBBEAN; 3 = SOUTH AMERICA; 4 = EUROPE; 5 = AFRICA; 6 = MID EAST; 7 = ASIA; 8 = OCEANIA

replace ccode2 = 1201 if exporter=="Posesiones norteamer. en Amer. Central" | exporter=="Possessoes Americanas Americas"
replace ccode2 = 1208 if exporter=="US Oceania" | exporter=="Oceanie Poss des Etats-Unis" | exporter=="Other US Pacific Islands" ///
     | exporter=="Posesiones norteamer. en Oceania" | exporter=="Possessoes Americanas Oceania"

replace ccode2 = 2001 if exporter=="Posesiones britanicas en Amer. Central"
replace ccode2 = 2004 if exporter=="Posesiones britanicas in Europa" | exporter=="Possessoes Britannicas Europa" | exporter=="P. ing. Europa" 
replace ccode2 = 2005 if exporter=="Posesiones britanicas en Africa" | exporter=="British Afrika" | exporter=="Africa Inglesa" ///
     | exporter=="Afrique Britannique" | exporter=="British Africa" | exporter=="Possessoes inglesas da Africa" | exporter=="Possessoes Britannicas Africa" ///
	 | exporter=="Autres Territoires Britanniques d'Afrique" | exporter=="P. ing. Africa" 
replace ccode2 = 2007 if exporter=="Pos. britanicas en Asia" | exporter=="Asia Inglesa (Otras posesiones)" | exporter=="Possessoes inglesas da Asia" /*
  */ | exporter=="Otras posesiones britanicas en Asia" | exporter=="Possessoes Britannicas Asia" | exporter=="Autres Territoires Britanniques d'Asie" /*
  */ | exporter=="P. ing. Asia" 
replace ccode2 = 2008 if exporter=="Other British Oceania" | exporter=="Posesiones britanicas en Oceania" | exporter=="Oceanie Poss britanniques" /*
  */ | exporter=="Oceania Inglesa"  | exporter=="British Islands in the Pacific" | exporter=="Posesiones Inglesas en Oceania" | exporter=="British Oceania" /*
  */ | exporter=="Possessoes inglesas da Oceania" | exporter=="Possessoes Britannicas Oceania" | exporter=="P. ing. Oceania" 

replace ccode2 = 2101 if exporter=="Pos. holandesas en Am. Cent." | exporter=="Possessoes holandas da America" | exporter=="P. hol. America" 
replace ccode2 = 2107 if exporter=="Dutch Possessions in Asia" | exporter=="P. hol. Asia" 

replace ccode2 = 2115 if exporter=="Belgian Congo and Ruanda-Urundi" | exporter=="Belgisch Afrika" | exporter=="Belgian Congo (includes Rwanda and Burundi)" ///
     | exporter=="Belgian Possessions in Africa" | exporter=="Posesiones belgas en Africa" | exporter=="Afrika, Belgijas kolonija" | exporter=="P. bel. Africa"

replace ccode2 = 2201 if exporter=="Posesiones francesas en Amer. Central"
replace ccode2 = 2205 if exporter=="French Africa" | exporter=="Posesiones francesas en Africa" | exporter=="Franzosisch Afrika" | exporter=="Franz-West-Aquatorial-Afrika" ///
     | exporter=="French West and Equatorial Africa" | exporter=="Africa Francesa" | exporter=="French Possessions in Africa" | exporter=="Afrique Francaise" ///
     | exporter=="Africa francesas" | exporter=="Otras Africas Francesas" | exporter=="Possessoes francas da Africa" | exporter=="Possessoes Francezas Africa" ///
	 | exporter=="P. fran. Africa" 
     
replace ccode2 = 2207 if exporter=="Posesiones francesas en Asia" | exporter=="French Possessions in Asia" | exporter=="Possessoes francas da Asia" /*
  */ | exporter=="Possessoes Francezas Asia" | exporter=="P. fran. Asia" 
replace ccode2 = 2208 if exporter=="French Oceania" | exporter=="Posesiones francesas en Oceania" | exporter=="Oceania Francesa" | exporter=="Oceanie Poss francaises"  ///
     | exporter=="Other French Pacific Islands" | exporter=="Posesiones Francesas en Oceania" | exporter=="P. fran. Oceania" 

replace ccode2 = 2305 if exporter=="Spanish Africa" | exporter=="Posesiones espanolas en Africa" | exporter=="Spanisch Afrika" | exporter=="Africa Espanola"  ///
     | exporter=="Afrique Espagnole" | exporter=="Possessoes Hepanholas Africa" 
replace ccode2 = 2355 if exporter=="Portuguese Africa" | exporter=="Portuguese Africa, Other" | exporter=="Posesiones portuguesas en Africa" | exporter=="Portug Afrika" ///
   | exporter=="Territoires Portugais d'Afrique" | exporter=="Africa Portuguesa" | exporter=="Portuguese Possessions in Africa" ///
   | exporter=="Afrika, Portugales kolonija" | exporter=="Possessoes Portuguezas Africa" | exporter=="P. port. Africa" 
     
replace ccode2 = 2357 if exporter=="Portuguese Asia" | exporter=="Portuguese Possessions in Asia" | exporter=="Possessoes Portugeuzas Asia" ///
   | exporter=="P. port. Asia" 
replace ccode2 = 2555 if exporter=="German Africa" | exporter=="P. alemanas Africa" 
replace ccode2 = 2558 if exporter=="German Oceania"

replace ccode2 = 3250 if exporter=="Italian Africa" | exporter=="Italienisch Afrika" | exporter=="Posesiones italianas en Africa" | exporter=="Afrique Italienne" /*
  */ | exporter=="Afrika, Italijas kolonija" | exporter=="Africa italiana" | exporter=="Possessoes Italianas Africa" | exporter=="Italian Possessions in Africa" /*
  */ | exporter=="Posesiones Italianas en Africa (Eritrea y Somalia)" 
  

