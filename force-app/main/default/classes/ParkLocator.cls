public class ParkLocator {
    public static String[] Country(String name) {
        List<String> countries = new List<String>();
        ParkService.ParksImplPort service = new ParkService.ParksImplPort();
		countries = service.byCountry(name);
        return countries;
    }
}