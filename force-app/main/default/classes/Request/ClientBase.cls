public virtual class ClientBase {
    private List<HttpHeader> headers = new List<HttpHeader>();
    private List<HttpParameter> params = new List<HttpParameter>();
    private String requestUrl;
    private String method;
    private Long requestStartTime;

   
    public ClientBase(String requestUrl, String method) {
        this.requestUrl = requestUrl;
        this.method = method;
    }

    public ClientResult execute(Object body,Type resultType) {
        ClientResult result = new ClientResult();
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        String url = buildUri(requestUrl, params);
        request.setEndpoint(url);
        request.setMethod(method);

        for (HttpHeader header : headers) {
            request.setHeader(header.key, header.value);
        }

        if (body != null) {
            BuildBodyContent(body,request);
        }

        HttpResponse response = http.send(request);

        System.debug(response.getStatusCode());
        System.debug(response.getBody());

        if (response.getStatusCode() == 200 && String.isNotBlank(response.getBody()))
        {
            result.Response = JSON.deserialize(response.getBody(), resultType);
            System.debug(result.Response);
        }
        else
        {
            System.debug(response.getBody());
        }
        
        return result;
    }

    public void addHeader(String key, String value) {
        headers.add(new HttpHeader(key, value));
    }

    public void addParameter(String key, String value) {
        params.add(new HttpParameter(key, value));
    }

    public void addAuthorization(String name, String value) {
        addHeader('Authorization', name + ' ' + value);
    }

    public virtual void BuildBodyContent(object body, HttpRequest request)
    {

    }

    private String buildUri(String url, List<HttpParameter> queryParams) {
        String builder = url;
        if (!queryParams.isEmpty()) {
            builder += '?';
            for (Integer i = 0; i < queryParams.size(); i++) {
                HttpParameter param = queryParams[i];
                builder += EncodingUtil.urlEncode(param.key, 'UTF-8');
                if (param.value != null) {
                    builder += '=' + EncodingUtil.urlEncode(param.value, 'UTF-8');
                }
                if (i < queryParams.size() - 1) {
                    builder += '&';
                }
            }
        }
        return builder;
    }

    private class HttpParameter {
        public String key;
        public String value;
    
        public HttpParameter(String key, String value) {
            this.key = key;
            this.value = value;
        }
    }
    private class HttpHeader {
        public String key;
        public String value;
    
        public HttpHeader(String key, String value) {
            this.key = key;
            this.value = value;
        }
    }
}

