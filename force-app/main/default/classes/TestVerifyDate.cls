@isTest
public class TestVerifyDate {
    @isTest static void CheckDatesIn30() {
        
        Date startDate = Date.today();
        Date endDte = Date.today().addDays(29);
        Date result = VerifyDate.CheckDates(startDate,endDte);
        System.assertEquals(result,endDte);
    }
      @isTest static void CheckDatesOver30() {
        
        Date startDate = Date.today();
        Date endDte = Date.today().addDays(30);
        Date result = VerifyDate.CheckDates(startDate,endDte);
        Assert.areNotEqual(result,endDte);
    }
}