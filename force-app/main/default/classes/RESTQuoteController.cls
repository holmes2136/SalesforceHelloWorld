@RestResource(urlMapping='/Portalquote/*')
global with sharing class RESTQuoteController {

  @HttpPost
  global static String createNewQuote() {
    
    RestRequest request = RestContext.request;

    system.debug('Request Body: ' + request.requestBody.toString());

    try {
      LogsExceptionClass.insertRequestLog(
        'Portalquote.createNewQuote',
        request.requestBody.toString(),
        ''
      );
    } catch (Exception e) {
    }

    return 'Submitted Quote';
  }
}