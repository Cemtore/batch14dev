public class StringDemoClass {
    public void stringMethod1 () {
        string stringDescription = 'Learning method1';
        system.debug(stringDescription);


        integer lengthOfString = stringDescription.length();
        system.debug('string length is ' +lengthOfString);

        string strCapital=stringDescription.toUpperCase();
        system.debug('Upper case ==>' +strCapital);

        Boolean containsApex = stringDescription.contains('Method1');
        system.debug('cantains method 1 ?? ' + containsApex);
        
            }
}