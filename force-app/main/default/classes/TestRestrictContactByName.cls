@isTest
public class TestRestrictContactByName {
    @isTest static void RestrictContactByNameTest(){
        
        Contact cont = new Contact();
        cont.FirstName = 'Holmes1412';
        cont.LastName = 'INVALIDNAME';
         
        Test.startTest();
        Database.SaveResult result = Database.insert(cont, false);
        Test.stopTest();
        
        System.assert(!result.isSuccess());
        System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML',result.getErrors()[0].getMessage());
    }
}