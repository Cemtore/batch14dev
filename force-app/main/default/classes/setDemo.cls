public class setDemo {
    public static void citySet(){

        Set<String> cities = new Set<String>();

        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Nairobi');
        
        system.debug('Cities from our SET :' + cities);
    }

public static void randomInteger(){
    Set<Integer> setInteger = new Set<Integer>();

    setInteger.add(10);
    setInteger.add(15);
    setInteger.add(21);
    setInteger.add(15);
    setInteger.add(10);

    system.debug('Set integer is : ' +setInteger);
}

public static Set<Integer> setFromList(List<Integer> listInt) {
    // create empty set to add all the elements of LIST.
    Set<Integer> returnSet= new Set<Integer>();
    // use addALL (list_or_set) method to add all the elements from list to set.
    returnSet.addAll(listInt);
    return returnSet;
}

//we will create a method to convert set to UPPERCASE.
    // our method will accept set<string>
    // return set<string> by converting each element to upperCase

public static Set<String> upperCaseSet(Set<String> setStr){
    // prepare empty set in which we will add uppercase strings.
    Set<String> upperSet = new Set<String>();

    // for each loop of set 
    for (string eachStr : setStr){
        string tempStr = eachStr.toUpperCase();
        upperSet.add(tempStr);

    }
    return upperSet;
    
}

}