public class StringArrayTest {
    
    public static List<String> generateStringArray(integer input){
        List<String> result = new List<String>();
        
        for(Integer i=0;i<input;i++) {
    	   result.add('Test ' + i);
           System.Debug('Test ' + i);
		}
      
        return result;
    }
}