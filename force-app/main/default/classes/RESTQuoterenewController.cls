@RestResource(urlMapping='/Portalrenewquote/*')
global with sharing class RESTQuoterenewController {

  @HttpGet
  global static String renewquotes() {
    String quoteID = RestContext.request.params.get('quoteId');

    try {
      LogsExceptionClass.insertRequestLog(
        'Portalrenewquote.renewquotes',
        'QuoteId:' + quoteID,
        ''
      );
    } catch (Exception e) {
    }

    return 'Renew quote is done sucussfully';
  }
}