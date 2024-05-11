public class LeadProcessor implements Database.Batchable<sObject> {
	public Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator([Select Id,LeadSource from Lead]);
    }
    public void execute(Database.BatchableContext bc, List<Lead> records){
        List<Lead> leadList = new List<Lead>();
        for (Lead lead : records) {
            lead.LeadSource = 'Dreamforce';
            leadList.add(lead);
        }
        update leadList;
    }
    public void finish(Database.BatchableContext bc){
        // execute any post-processing operations
    }
}