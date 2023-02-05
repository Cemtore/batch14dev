public class listDemo {

    public static String candidateList(integer i) {
        List<String> listCandidates = new List<String>();
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Borya');
        listCandidates.add('Marc');
        system.debug('Candidates are '+listCandidates);  
        
        string returnString = '';
        if (i>=0 && i<listCandidates.size())
        returnString=listCandidates[i];
        else 
        returnString='NO value found';

        return returnString;


    }


public static void randomInteger() {
    List<integer>  listInteger = new List<Integer>();
    listInteger.add(10);
    listInteger.add(15);
    listInteger.add(21);
    listInteger.add(15);
    listInteger.add(15);

    system.debug('List of Random integers '+listInteger);

    Integer index3value=listInteger.get(3);

    // OR

    integer index3value2=listInteger[3];

    system.debug('Index value three is '+index3value);
    system.debug('Index value three22 is '+index3value2);
}

public static void allCats() {
    List<cat> cats = new List<cat>();

    cat cb1 = new cat('alabay','ak');
    cat cb2 = new cat('aranja','gok');
    system.debug('all cats '+cats);

    cats.add(cb1);
    cats.add(cb2);
    system.debug('cats  ==>'+cats);

    if (!cats.isEmpty()){
        system.debug('cat at 0 '+cats[0]); 
    }
}
public static void iterateIntegerList() {
    List<integer>  listInteger = new List<Integer>();
    listInteger.add(10);
    listInteger.add(15);
    listInteger.add(21);
    listInteger.add(15);
    listInteger.add(15);
    for (integer eachInteger : listInteger) {
        system.debug(eachInteger);
    }
}
}