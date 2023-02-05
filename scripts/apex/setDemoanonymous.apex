Set<String> cities = new Set<String>();
cities.add('Tokyo');
cities.add('Lisbon');
cities.add('Berlin');
cities.add('Nairobi');
cities.add('Tokyo');
cities.add('Berlin');
cities.add('Nairobi');

Set<String> capCities = setDemo.upperCaseSet(cities);
system.debug('Capitalized city names ; ' + capCities);





List<Integer> l1 = new List<Integer>();
l1.add(10);
l1.add(15);
l1.add(21);
l1.add(21);
l1.add(10);
l1.add(15);
set<integer> s1=setDemo.setFromList(l1);
system.debug(l1);
// list will appear (10,15,21,10,15) - can have duplicates

system.debug(s1);
// set will appear {10,15,21} - Will NOT appear duplicate numbers





setDemo.citySet();

setDemo.randomInteger();

