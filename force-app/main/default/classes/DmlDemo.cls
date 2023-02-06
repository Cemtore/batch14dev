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
}