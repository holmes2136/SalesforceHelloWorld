public class ProductRepository {
 
    public List<Product2> GetProducts(){

        List<Product2> products = [Select Id,Name from Product2 
                                   where IsActive = true];

        return products;
    }
}