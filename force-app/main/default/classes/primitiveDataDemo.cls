public class primitiveDataDemo {
    public void printBasicDataType() {
        // method body
        // data type   variable name     value
        string batchName = 'Batch14';
        integer Candidate = 329;
        Boolean isAdmin = true;
        string hey = 'hey everyone';
        
        system.debug(hey);

        system.debug('candidates number===> '+ Candidate);

        string batchDescription = ('the best batch is ' + batchName);
        system.debug(batchDescription);

        Decimal dec = 75.15;
        system.debug('Our decimal is ' + dec);

        Long longNumber1= 67347836474627826L;
        system.debug('my long is ' + longNumber1);
        

    }

}