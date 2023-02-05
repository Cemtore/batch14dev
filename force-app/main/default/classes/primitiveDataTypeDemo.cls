public class primitiveDataTypeDemo {
    public void printNewDate() {
        system.debug('Create New Date instance');

        Date newDate=date.newInstance(1995, 2, 15);
        system.debug(newDate);

        Date newDate2=date.newInstance(2023, 1, 9);
        system.debug(newDate2);

        Date todayDate=date.today();
        system.debug(todayDate);
    }

public void printNewTime(){
    // newistnace  Hour,  Minute, Seconds,  milliSeconds
    Time myTime=time.newInstance(5, 31, 85, 15);
    system.debug('my time is  - '+myTime);

    }

public void printNewDateTime(){
    Date newDate=date.today();
    system.debug(newDate);

    Time newTime=time.newInstance(18, 02, 02, 02);
    system.debug(newTime);

    Datetime dt1=Datetime.newInstance(newDate,newTime);
    system.debug(dt1);

    Datetime dt2=Datetime.newInstance(2020,5,25);
    system.debug(dt2);

    Datetime dtGMT=Datetime.newInstanceGmt(2023, 1, 23, 1, 00, 00);
    system.debug(dtGMT);

    long longTime =354781245781L;
    Datetime dt4=datetime.newInstance(longTime);
    system.debug(dt4);

    datetime dt5=datetime.newInstance(2020,1,25,18,00,00);
    system.debug(dt5);

    datetime dt6=datetime.now();
    system.debug(dt6);

}
}