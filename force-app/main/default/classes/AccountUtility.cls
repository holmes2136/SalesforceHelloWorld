public class AccountUtility {
    public static void viewAnnualRevenue(){
        
        List<Account> accountsList = new List<Account>();
        
        accountsList = [select name , annualrevenue from account];
        
        for (Account acct : accountsList){
            String acctRev = acct.Name + ':' + acct.annualrevenue ;
            system.debug(acctRev);
        }
    }
}