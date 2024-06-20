@RestResource(urlMapping='/api/ZPRQQUOTEWITHQUOTENUMBER/*')
global with sharing class ZPRQQUOTEWITHQUOTENUMBER {

  @HttpGet
  global static void doGet() {
    RestRequest req = RestContext.request;
    RestResponse response = RestContext.response;

    String Qtstr = req.params.get('QuoteitemNumber');
    System.debug('QuoteitemNumber' + Qtstr);

    try {
      LogsExceptionClass.insertRequestLog(
        'ZPRQQUOTEWITHQUOTENUMBER.doGet',
        'QuoteitemNumber:' + Qtstr,
        ''
      );
    } catch (Exception e) {
    }

    response.responseBody = Blob.valueOf('OK');
  }
}