public class Soql3
{
	public static void main()
    {
        AggregateResult ar1 = [Select SUM(Amount) from Opportunity];
        system.debug('Result is '+ar1);
        
        AggregateResult ar2 = [Select MAX(Amount) from Opportunity];
        system.debug('Result is '+ar2);
        
        AggregateResult ar3 = [Select MIN(Amount) from Opportunity];
        system.debug('Result is '+ar3);
        
        AggregateResult ar4 = [Select AVG(Amount) from Opportunity];
        system.debug('Result is '+ar4);
        
        AggregateResult ar5 = [Select COUNT_DISTINCT(Amount) from Opportunity];
        system.debug('Result is '+ar5);
        
        Integer i = [Select COUNT() from Opportunity];
        system.debug('Total Opportunities '+i);
        
        AggregateResult ar6 = [Select COUNT(Amount) from Opportunity];
        system.debug('Result is '+ar6);
        
        AggregateResult ar7 = [Select COUNT(ID) from Opportunity];
        system.debug('Result is '+ar7);
        
        Integer i2 = (Integer)ar6.get('expr0');
        system.debug(i2);
        
        
    }
}