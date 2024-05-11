public class AccountUtils {
    public static List<Account> accountsByState(String state){
        
        List<Account> accounts  = [select Id,Name from Account where BillingState = :state];
        
        return accounts;
    }
}