public with sharing class SoqlDemo {
    public static void accountSOQL_1(){
        list<account> listAcc=[select id, name, phone from account order by CreatedDate desc];
        system.debug('list of accounts '+listAcc);
    }

    public static void accountSOQL_11(){
        list<account> listAcc=[select id, name, phone from account order by CreatedDate desc LIMIT 100];
        system.debug('accounts acc '+listAcc);
    }

    public static void accountSOQL_2() {
        account acc = [select id, name, phone,AccountNumber from account order by CreatedDate desc LIMIT 1];
        system.debug('account ac is '+acc);

        string aName=acc.name;
        string aPhone=acc.phone;
        system.debug('acc name is '+acc.name + ', acc phone is '+acc.phone + 'acc Number is '+acc.accountNumber);
    }

    public static void accountSOQL_3() {
         list<account> listAccount = [select id, name, phone, accountnumber from account order by CreatedDate];

         for (account eachAccount : listAccount) {
            system.debug('---each account Loop  START ----');
            system.debug('each account record '+eachAccount);
            string accName = eachAccount.Name;
            string accPhone = eachAccount.Phone;

            system.debug('acc name is ' +accName + ', acc phone is '+accPhone + ' , acc number is '+eachAccount.AccountNumber);

            system.debug('---each account Loop ENDDD');

         }
    }

    public static void accountFilter_SOQL() {
            string accountNameFilter = 'sfdc';
            list<account> listAcc = [select id, name from account where name = : accountNameFilter];
            system.debug('list acc filtered '+listAcc);

    }

    public static void accountFilter_SOQL222(string accountNaMEFilter) {
        list<account> listAcc = [select id, name from account where name = : accountNameFilter];
        system.debug('list acc filtered '+listAcc);

}

public static void childToPrent_SOQL1() {
    list<contact> listcontact = [select id, name, phone, account.name, account.industry from contact where account.industry = 'energy'];
    for (contact eachContact : listcontact) {
        string accName = eachContact.account.name;
        system.debug('contact name is ' + eachContact.Name + ', its account is '+ accName);
        
    }
    
}

public static void parentToChild_SOQL1() {
    List<Account> listAcc = [select name, annualrevenue,
                            (select name, amount from opportunities where stagename = 'Closed won')
                            from account where type = 'Customer - direct'];
for (account eachAcc : listAcc) {
    system.debug('account Name is '+eachAcc.Name + ' , acc Annual revenue ' + eachAcc.AnnualRevenue);
    List<Opportunity> eachAccOpp = eachAcc.Opportunities;
    system.debug('--------------');
    for (Opportunity eachopp : eachAccOpp) {
        system.debug('opp name ' + eachopp.Name + ', amount is '+eachopp.Amount);

    }
    system.debug('________________');
    
}    
}

// projects, and its tickets
// 2 requests
    // 1. total tickets for each PROJECT
    // 2. high priority ticket for each PROJECT.

public static void parentToChild_SOQL2() {
    list<salesforce_project__c> listSP= [ select name, project_name__c, (select subject__c, priority__c from salesforce_tickets__r) from salesforce_project__c ];
    // for each loop
    for (salesforce_project__c eachSP : listSP) {
        // 1.Total tickets.
        list<salesforce_ticket__c> listST = eachSP.salesforce_tickets__r;
        integer totalTickets = listST.size();
        integer highPrioritySt = 0;
        // check each ticket's priority field. if it is 'high' then increment 
        for (salesforce_ticket__c eachST : listST) {
            //check priority == 'High'
            if (eachST.priority__c=='High') {
                highPrioritySt++;

            }
        }
        system.debug('Project name '+eachSP.name + ', total tickets ' + totalTickets + '. High prioroity tickets are '+highPrioritySt);
        

    }
    
}


}

