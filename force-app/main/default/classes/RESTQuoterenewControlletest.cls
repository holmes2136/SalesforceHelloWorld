@isTest(SeeAllData=true)
public with sharing class RESTQuoterenewControlletest {
  @isTest
  public static void renewquotesTestSuccess() {
    Test.startTest();

    RestRequest req = new RestRequest();
    RestResponse res = new RestResponse();
    req.requestURI = '/services/apexrest/Portalrenewquote?quoteId=123';
    req.addHeader('Content-Type', 'application/json');
    req.httpMethod = 'GET';
    RestContext.request = req;
    RestContext.response = res;
    RESTQuoterenewController.renewquotes();

    Test.stopTest();
  }
}