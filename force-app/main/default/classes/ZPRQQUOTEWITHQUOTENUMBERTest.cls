@isTest(SeeAllData=true)
public with sharing class ZPRQQUOTEWITHQUOTENUMBERTest {
    @isTest
    public static void ZPRQQUOTEWITHQUOTENUMBERTestSuccess() {
      Test.startTest();
  
      RestRequest req = new RestRequest();
      RestResponse res = new RestResponse();
      req.requestURI = '/services/apexrest/api/ZPRQQUOTEWITHQUOTENUMBER?QuoteitemNumber=123';
      req.addHeader('Content-Type', 'application/json');
      req.httpMethod = 'GET';
      RestContext.request = req;
      RestContext.response = res;
      ZPRQQUOTEWITHQUOTENUMBER.doGet();
  
      Test.stopTest();
    }
}