public class StringDemoClass2 {
    public void StringMethod2() {

        String strngDscrt='       This    is for    my second time       practice..       ';
        system.debug(strngDscrt);

        integer lengthOfStrn=strngDscrt.length();
        system.debug('Length of my string is ' + lengthOfStrn);

        String UppercaseOfstring=strngDscrt.toUpperCase();
        system.debug(UppercaseOfstring);

        Boolean containsSec=strngDscrt.contains('second');
        system.debug('check if it is contains the word - second - ' + containsSec);

        String trimChecking=strngDscrt.trim();
        system.debug('checking trim function ' +trimChecking);
        



    }
}