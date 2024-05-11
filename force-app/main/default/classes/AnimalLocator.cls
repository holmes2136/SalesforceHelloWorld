public class AnimalLocator {
    
    public static String getAnimalNameById(Integer id){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        String url = 'https://th-apex-http-callout.herokuapp.com/animals/' + id;
        request.setEndpoint(url);
        System.Debug(url);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        String returnResult = '';
        // If the request is successful, parse the JSON response.
        if(response.getStatusCode() == 200) {
            // Deserializes the JSON string into collections of primitive data types.
            //Map<String, Animal> results = (Map<String, Animal>) JSON.deserializeUntyped(response.getBody());
            AnimalResult  result = (AnimalResult ) JSON.deserialize(response.getBody(), AnimalResult .class);
           
            //Animal animal = (Animal) results.get('animal');
            System.debug(result.animal.name);
            returnResult = result.animal.name;
        }
        return returnResult;
    }
}