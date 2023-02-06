public class DmlDemo {
    public static void dmlDemoInsert_stnObj1(){
        // 1. create new instance
        account acc = new account();
        // 2. set field values
        acc.Name = 'Soft Innovas';

        // final - step 
        insert acc; // this will create a new record 

    }
    public static void dmlDemoInsert_CstmObj1() {
        salesforce_project__c sp = new salesforce_project__c();
        sp.Project_name__c = 'Learn dml';
        sp.description__c = 'learn dml batch14';
        sp.status__c = 'New';

        insert sp;

    }

    public static void dmlDemoUpdateDemo_stnObj1(){
        account ac = new account ();
        ac.Name = 'Salesforce';
        system.debug('before inserting ac ' +ac);
        insert ac;
        system.debug('record is inserted now ac: '+ac);

        // we now have ID in accounts instance 'ac'
        // we need ID if we want to update a record.
        ac.name = 'Salesforce INC.';
        update ac;

    }
    public static void dmlUpdateDemo_stndObj2(){
        account acc = [select id, name from account where name like 'Soft innovas%' limit 1];
        //now set new field value
        acc.Name = 'Softinnovas Inc.';
        acc.Phone = '956875414444';
        acc.Website = 'jorap@mail.ru';
        update acc;
        system.debug('acc '+acc);

    }
    
    public static void dmlInsertDemo_stndObj2(){
        account acc = [select id, name from account where name like 'Soft innovas%' limit 1];
        // create contact instance
        contact c = new contact();
        c.LastName = 'Biden';
        // setting a relationship
        c.AccountId = acc.Id;
        insert c;

    }

    public static void dmlDemoInsert_cstmObj2(){
        Salesforce_project__c sp=[select id from Salesforce_Project__c order by createddate desc limit 1];
        // create ticket instance 
        salesforce_ticket__c newST = new salesforce_ticket__c();
        newST.Subject__c = 'create related record via apex';
        newST.priority__c = 'High';
        newST.status__c = 'New';
        newST.Requested_by_date__c = date.today();
        //set the relationship id
        newST.salesforce_project__c=sp.id;
        // insert it now;
        insert newST;

    }

    public static void dmlDemoMultipleInsert_right1(){
        // create list of Subject
        List<Account> listAccount = new List<Account>();
        // create first instance 
        account acc1 = new account();
        acc1.name = 'Bulk acc1';
        acc1.ShippingCity = 'New York';
        acc1.active__c = 'No';
        listAccount.add(acc1);

        account acc2 = new account();
        acc2.name = 'Bulk acc2';
        acc2.ShippingCity = 'DC';
        acc2.active__c = 'Yes';
        listAccount.add(acc2);

        account acc3 = new account();
        acc3.name = 'Bulk acc3';
        acc3.ShippingCity = 'Houston';
        acc3.active__c = 'Yes';
        listAccount.add(acc3);

        // insert list

        insert listAccount;

    }

    public static void dmlDemoMultipleInsert_right2(){
        List<Account> insertAccountList = new List<Account> ();
        for (integer i=0; i<166; i++) {
            account a = new account();
            a.name = 'SoftInnovas v'+i;
            a.Phone = '865251500'+i;
            a.AccountNumber = 'rt'+i;
            a.active__c = 'Yes';
            insertAccountList.add(a);

        }
        // check if List is not empty
        // version 1 -  .isEmpty --> true when empty, false when Not empty
        // version 2 -- !.isEmpty --> false when empty, true when Not empty
        if (!insertAccountList.isEmpty()) {
            insert insertAccountList;
        }
    }

    // get the latest created 50 accounts and Update Name
    // append 'B.0'  - - to account Name 

    public static void dmlDemoMultipleUpdate_right1(){
        List<Account> listAccount = [select id, name from account 
                                        order by CreatedDate desc limit 50];
        for (account eachAcc : listAccount) {
            eachAcc.Name += ' B.0'; // other way to write this statement is --> eachAcc.Name = eachAcc.Name + ' B.0'; 

        }
        update listAccount;
    }

// we query all accounts --> 191 accounts in my salesforce (select count() from account) - i checked
// 1. update name and append 'Yy' --- if active is 'Yes' -->100
// 2. update name and append 'Nn' ------ if active is Null ---> 5 (i have only 5, Vitap has more)

    public static void dmlDemoMultipleUpdate_right2() {
        List<Account> listAccount= [select id, name, Active__c from Account]; 
        List<Account> updateAccountList = new List<Account> ();

        for (account eachAcc : listAccount) {
            if (eachAcc.Active__c == 'Yes') {
                eachAcc.Name = eachAcc.Name + 'Yy';
                updateAccountList.add(eachAcc);
            } else if (eachAcc.Active__c == null) {
                eachAcc.Name = eachAcc.Name + 'Nn';
                updateAccountList.add(eachAcc);

        }
        }
        if (!updateAccountList.isEmpty()) {
            update updateAccountList;

        }

    }
}