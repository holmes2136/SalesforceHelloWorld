public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer numAccts,String nombre){
        List<Contact> accts = new List<Contact>();
        
           for(Integer i=0;i<numAccts;i++) {

            Contact a = new Contact(LastName=nombre + ' ' + i,  FirstName =nombre + ' ' + i);
      
            accts.add(a);
           }
           	//insert accts;
    
        	return accts;
        
    }
}