public class forEachDemoClass {
    
    @AuraEnabled(cacheable=true)
    public static List<Opportunity> getOpportunity()
    {
        List<Opportunity> oppList = [Select Id, Name from Opportunity];
        
        return oppList;
    }

}