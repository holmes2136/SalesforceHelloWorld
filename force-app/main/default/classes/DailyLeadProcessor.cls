public class DailyLeadProcessor implements Schedulable {
	 public void execute(SchedulableContext ctx) {
        List<Lead> leads = [SELECT Id, LeadSource
            FROM Lead
            WHERE LeadSource = ''] ;
                            
        for(Lead lead : leads){
            lead.LeadSource = 'Dreamforce';                    
        }
      
        update leads;
    }
}