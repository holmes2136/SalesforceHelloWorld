@isTest
private class KeyValueStoreTest {

    @isTest
    static void IsEmailExistInOrganizationWideEmailAddressesUnitTest() {
      
        Test.startTest();
        
        KeyValueStore temp = new KeyValueStore();
        
        System.assertEquals(KeyValueStore.YAGEO_GROUP_SALESFORCE_EMAIL,'holmes2136@gmail.com');
        
        OrgWideEmailAddress[] orgEmailList = [SELECT Id,Address FROM OrgWideEmailAddress where Address = :KeyValueStore.YAGEO_GROUP_SALESFORCE_EMAIL];

        System.assert(orgEmailList.size() > 0);
         
        test.stopTest();


    }
}