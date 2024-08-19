public class ProductClient {
    private string productRequestUrl;

    public ProductClient() {
        Map<String, API__mdt> mapCMD = API__mdt.getAll();
        productRequestUrl = mapCMD.get('Product').Endpoint__c;
    }

    public List<Product> GetProducts()
    {
        String url = productRequestUrl + '/Products';

        GetRequest request = new GetRequest(url);

        return (List<Product>)request.execute(null, List<Product>.Class).Response;
    }

    public Product GetProductById(Integer ProductId)
    {
        GetRequest request = new GetRequest(productRequestUrl + '/Products/' + ProductId);

        return (Product)request.execute(null, Product.Class).Response;
    }

    public Product AddProduct(Product product)
    {
        PostRequest request = new PostRequest(productRequestUrl + '/Products/');

        return (Product)request.execute(product, Product.Class).Response;
    }
}