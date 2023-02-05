// map (collection);
    //key datatype.
    // value datatype       variable name     new instance of same type of map 
map <string, string>        mapCntCurrency =  new map <string, string>();


// datatype of key and value should match what we have initialized

// variable.name.put(key, value);
mapCntCurrency.put('USA', 'Dollar');
mapCntCurrency.put('Japan', 'Yen');
mapCntCurrency.put('France', 'Euro');
mapCntCurrency.put('India', 'Rupeess');
mapCntCurrency.put('India', 'Rupee');
mapCntCurrency.put('Turkey', 'Lira');

system.debug('Map of Country and Currency '+mapCntCurrency);

string IndiaCurrency = mapCntCurrency.get('India');
string UsaCurrency = mapCntCurrency.get('USA');

system.debug('India Currency is : ' + IndiaCurrency);
system.debug('USA currency is : '+UsaCurrency);



Set<String> countrySet = mapCntCurrency.keySet();
system.debug('Countries in map'+countrySet);


List<String> currencyList = mapCntCurrency.values();
system.debug('Currencies in map '+currencyList);


//for each loop start here 
Set<String> countries = mapCntCurrency.keySet();

//for each loop on country set

for (string eachkey : countrySet) {
    string printString = 'Country is ' + eachkey;
    
    // value from key from a map
    string eachValue = mapCntCurrency.get(eachkey);
    printString+=', its currency is ' + eachValue;
    system.debug(printString); 
}


