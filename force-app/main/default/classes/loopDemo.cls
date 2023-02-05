public class loopDemo {
    public void print_int_while(){
        integer count=10;
        while (count<=25){
            system.debug(count);
            count++;
        }
    }
    public void print_N_Numbers(integer n){
        for (Integer i = 0; i < n; i++) {
            system.debug(i);
        }
    }

    public void print_N_Odd_Numbers(integer startInt, integer endInt){
        if (startInt>endInt) {
            system.debug('Start can not be BIGGER');
        } else {
        for (integer i=startInt; i<endInt; i++) {
            integer remainderI=math.mod(i,2);
            if (remainderI==1) {
                system.debug(i);
            }
        }
        }
    }
}