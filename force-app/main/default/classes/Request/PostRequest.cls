public class PostRequest extends ClientBase  {
    protected String APPLICATION_JSON_CONTENT_TYPE = 'application/json';

    public PostRequest(String requestUrl) {
        super(requestUrl, 'POST');
    }

    public override void BuildBodyContent(object body, HttpRequest request)
    {
        if (body != null)
        {
            request.setBody(JSON.serialize(body));
            request.setHeader('Content-Type', APPLICATION_JSON_CONTENT_TYPE); 
        }
    } 
}