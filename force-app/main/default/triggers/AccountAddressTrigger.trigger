trigger AccountAddressTrigger on Account (before insert,before update) {
    
    
    for(Account acct:Trigger.new){
        
       if(acct.Match_Billing_Address__c == true){
        
          //acct.ShippingStreet  = acct.BillingStreet;
          acct.ShippingPostalCode  = acct.BillingPostalCode;
          //acct.ShippingCity   = acct.BillingCity ;
       }
    }
   
}