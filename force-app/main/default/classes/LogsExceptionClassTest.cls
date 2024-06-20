@isTest(SeeAllData=True) 
public with sharing class LogsExceptionClassTest {
    @isTest
	public static void insertRequestLogTestSuccess(){

        LogsExceptionClass.insertRequestLog('Category', 'Content', 'Response');

        Test.startTest();
        
        Request_Log__c result = [SELECT Category__c FROM Request_Log__c where Category__c = 'Category' LIMIT 1];

        Test.stopTest();

        System.assertEquals('Category', result.Category__c);
    }
}