Calculator calc = new Calculator();
date newDate=date.today();
boolean newDateLYCheck = calc.leapYearCheck(newDate);
system.debug(newDateLYCheck);





integer sum12=calc.add(10, 15, -25);
system.debug('sum of three is===>'+sum12); 





integer x=10;
integer y=15;
integer sum1=calc.add(x,y);
system.debug(sum1);

integer sum2=calc.add(20,25);
system.debug(sum2);








calc.printAndReturnMessage('print this message1');
string result=calc.printAndReturnMessage('second type of result msg');
system.debug(result);


calc.printNewMessage('45');
calc.printNewMessage('hey boy');

string m=('hello everyone');
calc.printNewMessage(m);




