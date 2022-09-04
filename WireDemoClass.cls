public class WireDemoClass {

    @AuraEnabled(cacheable=true)
    public static List<Opportunity> getOpportunity()
    {
        List<Opportunity> oppList = [Select Id, name from Opportunity];
        
        return oppList;
    }
}