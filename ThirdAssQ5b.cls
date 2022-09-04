public class ThirdAssQ5b
{
	public static void main()
    {
        date startDate = Date.newInstance(2018, 05, 01);
        date endDate = Date.newInstance(2018, 05, 30);
        
        List<Student__c> stdList = [ Select id, lastModifiedDate, lastModifiedById from Student__c where lastModifiedDate <: endDate AND lastModifiedDate >: startDate AND lastModifiedById = '0055i000004EJTj' AND isDeleted = true ALL ROWS];
    	
        system.debug(stdList);
    }
}