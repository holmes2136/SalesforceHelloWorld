@isTest(SeeAllData=true)
public with sharing class RESTQuoteupdateControllerTest {
    @isTest
    public static void updateQuotesTestSuccess() {
        Test.startTest();

        String jsonStr = 
        '{"Quotelist":[' +
        '{"Account":"1002600","BidType":"Bid for Bid","lineItems":[' +
            '{"TargetPrice":1.0,"Qty":5.0,"Product":"H1102FNLT"},' +
            '{"TargetPrice":0.5,"Qty":1.0,"Product":"Eraser"}],' +
                '"Program":"my progm"}' +
        ']}';
    
        RestRequest req = new RestRequest();
        RestResponse res = new RestResponse();
        req.requestBody = Blob.valueof(jsonStr);
        req.requestURI = '/services/apexrest/Portalquoteupdate';
        req.addHeader('Content-Type', 'application/json');
        req.httpMethod = 'POST';
        RestContext.request = req;
        RestContext.response = res;
        RESTQuoteupdateController.updateNewQuote();
    
        Test.stopTest();
    }
}