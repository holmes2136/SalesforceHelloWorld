public with sharing class LogsExceptionClass {
    public static void insertRequestLog(
      String Category,
      String Content,
      String Response
    ) {
      List<Request_Log__c> logList = new List<Request_Log__c>();
      Request_Log__c logs = new Request_Log__c();
      logs.Category__c = Category;
      logs.Content__c = Content;
      logs.Response__c = Response;
  
      logList.add(logs);
      insert logList;
    }
  }
  