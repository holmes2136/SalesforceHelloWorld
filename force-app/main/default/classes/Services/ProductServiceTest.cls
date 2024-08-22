@isTest
public  class ProductServiceTest {

    @isTest static void GetPrdocutTest_ReturnTrue() {

        UniversalMocker productRepository = UniversalMocker.mock(ProductRepository.class);
      
        List<Product2> products = new List<Product2>();
        Product2 prod = new Product2();
        prod.Name = 'test2';
        products.add(prod);

        productRepository.when('GetProducts').thenReturn(products);

        ProductRepository mockDBService = (ProductRepository)productRepository.createStub();

        ProductService service = new ProductService(mockDBService);

        boolean result = service.GetProduct();

        assert.isTrue(result);
    }
    @isTest static void GetPrdocutTest_ReturnFalse() {

        UniversalMocker productRepository = UniversalMocker.mock(ProductRepository.class);
      
        List<Product2> products = new List<Product2>();

        productRepository.when('GetProducts').thenReturn(products);

        ProductRepository mockDBService = (ProductRepository)productRepository.createStub();

        ProductService service = new ProductService(mockDBService);

        boolean result = service.GetProduct();

        assert.isFalse(result);
    }
}