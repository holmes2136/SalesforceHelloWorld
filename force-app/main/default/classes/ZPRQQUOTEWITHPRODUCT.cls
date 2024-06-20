@RestResource(urlMapping='/api/ZPRQQUOTEWITHPRODUCT/*')
global with sharing class ZPRQQUOTEWITHPRODUCT {

  @HttpGet
  global static void doGet() {
    RestRequest req = RestContext.request;
    RestResponse response = RestContext.response;

    String productName = req.params.get('ProductName');
    System.debug('productName: ' + productName);

    try {
      LogsExceptionClass.insertRequestLog(
        'ZPRQQUOTEWITHPRODUCT.doGet',
        'ProductName:' + productName,
        ''
      );
    } catch (Exception e) {
    }

    response.responseBody = Blob.valueOf('OK');
  }
}