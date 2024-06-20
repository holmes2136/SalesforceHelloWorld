@RestResource(urlMapping='/Portalquoteupdate/*')
global with sharing class RESTQuoteupdateController {

  @HttpPost
  global static String updateNewQuote() {

    RestRequest request = RestContext.request;

    system.debug('Request Body: ' + request.requestBody.toString());

    try {
      LogsExceptionClass.insertRequestLog(
        'Portalquote.updateNewQuote',
        request.requestBody.toString(),
        ''
      );
    } catch (Exception e) {
    }

    return 'Updated Quote';
  }
}