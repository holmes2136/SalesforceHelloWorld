@isTest
public class DailyLeadProcessorTest {
    public static String CRON_EXP = '0 0 0 15 3 ? 2042';
    @isTest private static void Test(){
        
        List<Lead> leadList = new List<Lead>();
        
        for (integer j=0; j < 200; j++)
        {
          Lead lead = new Lead(Company='Test',FirstName='Test',LastName='lastname',Email='test@gmail.com',leadSource='');
      	  leadList.add(lead);                  
        }
        insert leadList;
        
        Test.startTest();
        // Schedule the test job
        String jobId = System.schedule('ScheduledApexTest',
            CRON_EXP,
            new DailyLeadProcessor());
        // Verify the scheduled job has not run yet.
       
         Test.stopTest();
         Lead lead = [SELECT LeadSource
            FROM Lead
            Limit 1];
        System.assertEquals('Dreamforce', lead.LeadSource, 'Tasks exist before job has run');
        // Stopping the test will run the job synchronously
       
    }
}