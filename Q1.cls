public class Q1 {
    public static void main(string first, string last)
    {
        Date firstDate = date.parse(first);
        Date lastDate = date.parse(last);
        
        List<Opportunity> oppList = [select name, CloseDate from Opportunity where CloseDate >: firstDate AND CloseDate <: lastDate AND OwnerId = '0055i000005ERqZAAW'];
        
        for(Opportunity o: oppList)
        {
            system.debug('Opp: '+o.Name+ ' | '+'Close Date: '+o.CloseDate);
        }
        
        
    }

}