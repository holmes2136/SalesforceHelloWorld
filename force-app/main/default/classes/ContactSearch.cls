public class ContactSearch {
    public static Contact[] searchForContacts(String Name,String Code){
        
        Contact[] cts = [SELECT Id,Name FROM Contact 
                 WHERE LastName = :Name AND MailingPostalCode=:Code];
        
        return cts;
    }
}