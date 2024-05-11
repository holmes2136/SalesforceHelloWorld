public class AccountProcessor {
    @future
    public  static void countContacts(List<Id> recordIds){
        
      List<Account> accounts = [SELECT Id, (SELECT Id FROM Contacts) FROM Account WHERE Id IN :recordIds];
      
      for(Account a : accounts){
        a.Number_of_Contacts__c = a.Contacts.size();
      }
		
      update accounts;
        
    }
}