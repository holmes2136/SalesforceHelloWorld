@IsTest
public class AccountProcessorTest {
	@IsTest
    private static void testAccount() {
   
        Account acct = new Account(Name='Test1');
        insert acct;
        
        Contact con = new Contact(LastName='LastName',AccountId =acct.Id);
        
        List<ID> accountIDs = new List<ID>();
        accountIDs.add(acct.Id);
        
		Test.startTest();
        AccountProcessor.countContacts(accountIDs);
        Test.stopTest();
        
        Account acctObj = [SELECT Number_of_Contacts__c FROM Account WHERE Id=:acct.Id];
        System.assertEquals(1, acctObj.Number_of_Contacts__c);
    }
}