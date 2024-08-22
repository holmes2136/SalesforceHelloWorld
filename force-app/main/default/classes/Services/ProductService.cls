public with sharing class ProductService {
    
    private ProductRepository prductRepository;

    public ProductService(ProductRepository prodRepository){
        prductRepository = prodRepository;
    }

    public List<Product2> GetProducts(){       
        return prductRepository.GetProducts();
    }

    public Boolean GetProduct(){  
        
        List<Product2> productList = prductRepository.GetProducts();

        if(productList.size() > 0){
            return true;
        }
        return false;
    }
}