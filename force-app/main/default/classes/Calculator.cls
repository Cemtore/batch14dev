public class Calculator {
  // method body 
  public void welcomeMessage(){
    system.debug('Welcome to APEX calculator');
  }

  public void printNewMessage(string msg) {
    system.debug(msg);
  }

  public string printAndReturnMessage(string msg){
    string returnStr=' ';
    system.debug('message is =='+msg);

    returnStr=msg+' .... OK Cool';
    return returnStr;
  }

  public integer add(integer a, integer b){
    integer sum= a + b ;
    return sum;
  }


  
    public integer add(integer x, integer y, integer z){
    integer sum=x*y-z;
    return sum;
    }


  public boolean leapYearCheck(date dt){
    integer year=dt.year();  // returns year component
    // year will be = 2023
    boolean lp=date.isLeapYear(year);
    // lp = false 
    return lp;

  }

}