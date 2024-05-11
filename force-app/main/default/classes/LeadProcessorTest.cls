@isTest
public class LeadProcessorTest {
    @testSetup
    static void  setup() {
        List<Lead> leads = new List<Lead>();
      
        for (Integer i=0;i<200;i++) {
            leads.add(new Lead(Company = 'Lead Company', FirstName = 'firstname', LastName = 'lastname', Email = 'test@gmail.com'));
        }
        insert leads;
      
    }
    @isTest static void  Test(){
        
        Test.startTest();
        LeadProcessor uca = new LeadProcessor();
        Id batchId = Database.executeBatch(uca);
        Test.stopTest();
        Lead lead = [select leadsource from lead limit 1];
        System.assertEquals('Dreamforce',lead.leadsource );
    }
}