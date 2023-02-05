public class DateTimeMethodsDemo {
    public void calculateAgeInMonths(){
        date birthdate=date.newInstance(1991, 8, 12);
        system.debug('My birthdate - '+birthdate);

        date todaysDate=date.today();
        system.debug('Todays date is -- '+todaysDate);

        integer ageInMonths=birthdate.monthsBetween(todaysDate);
        system.debug('My bday calculated in Months - '+ageInMonths);

        integer ageInDays=birthdate.daysBetween(todaysDate);
        system.debug('My bday calculated in DAYS - '+ageInDays);
          }
    
    public void printSubscriptionEndDate() {
        date subscriptionStartDate=date.today();

        date subscriptionEndDate=subscriptionStartDate.addDays(-1000);
        system.debug('Subscription end date '+ subscriptionEndDate);

        integer endYear=subscriptionEndDate.year();
        system.debug('Subscription end year is ===>'+endYear);

        integer endMonth=subscriptionEndDate.month();
        system.debug('Subscription end month ===> '+endMonth);
    }

    public void printOfferEndDate() {
        Datetime offerStart=datetime.now();
        Datetime offerEnd=offerStart.addHours(51);

        system.debug('Offer ends in 51 hours ===> ' +offerEnd);

        Date endDay23=offerEnd.date();
        system.debug('offer end date '+endDay23);

        time offerstarttime=time.newInstance(1, 00, 00, 00);
        system.debug('offer start time '+offerstarttime);
    }

    public void birthDt(){
        datetime birthDate=datetime.newInstance(1991, 08, 12, 06,  00, 00);
        long birthDateMS=birthDate.getTime();
        system.debug('My birthday in MS ==>' +birthDateMS);
        
    }
}