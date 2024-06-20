@isTest(SeeAllData=true)
public with sharing class ZPRQQUOTEWITHPRODUCTTest {
    @isTest
    public static void ZPRQQUOTEWITHPRODUCTTestSuccess() {
      Test.startTest();
  
      RestRequest req = new RestRequest();
      RestResponse res = new RestResponse();
      req.requestURI = '/services/apexrest/api/ZPRQQUOTEWITHPRODUCT?ProductName=test';
      req.addHeader('Content-Type', 'application/json');
      req.httpMethod = 'GET';
      RestContext.request = req;
      RestContext.response = res;
      ZPRQQUOTEWITHPRODUCT.doGet();
  
      Test.stopTest();
    }
}