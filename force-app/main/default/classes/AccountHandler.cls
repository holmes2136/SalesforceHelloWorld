public class AccountHandler {
    public static void insertAccount(Integer count){
        
        List<Account> addAccounts = new List<Account>();
        
        Integer counter = 1;
        
        while(counter <= count){
           Account acct = new Account();
           acct.Name = 'Acme Inc ' + counter;
           acct.AccountNumber = 'A000' + counter;
           addAccounts.add(acct);
           counter = counter + 1;
        }
        
        insert addAccounts;
    }
    public static Account insertNewAccount(String AcctName){
        Account acct = new Account();
        
        try{
            
        
        acct.Name = AcctName;
      	insert acct;
        }
        catch(DmlException ex){
            
            System.debug('A DML exception has occurred: ' +
                ex.getMessage());
            return null;
        }
        return acct;
    }
}