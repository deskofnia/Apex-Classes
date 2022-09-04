public class currencyConverterClass {
    
    public static Decimal convertCurrencyToINR(decimal eur)
    {
        Decimal inr = 0.0;
        
        HTTP h = new HTTP();
        HTTPRequest req = new HTTPRequest();
       	req.setEndpoint('https://api.apilayer.com/currency_data/convert?base=EUR&symbols=INR&date=2022-08-25&amount=5&apikey=6Oap3PHkza02FL4Sa9XpD6pUyStwjV5z');
        req.setMethod('GET');
        
        

      	
        HTTPResponse res = h.send(req);
        
        Map<String, Object> jsonBody = (Map<String, Object>)Json.deserializeUntyped(res.getBody());
        system.debug(jsonBody);
        
        //Map<String, Object> nMap = (Map<String, Object>)jsonBody.get('rates');
        
        //Decimal conversionRate = (Decimal)nMap.get('INR');
        
        //inr = eur * conversionRate; 
        
        return inr;
    }

}