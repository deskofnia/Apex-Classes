public class ThirdAssQ10
{
	public static void main()
    {
        Savepoint sp1 = Database.setSavepoint();
        
        integer count=0;
        
        List<Student__c> stdList = new List<Student__c>();
        
        for(integer i=0; i<2; i++)
        {
            stdList.add(new Student__c(Student_name__c ='Test Student '+i));
            stdList.add(new Student__c());
        }
        
        //System.debug('Total Records: '+stdList.size()+'\n');
        
        Database.saveResult[] saveList = Database.insert(stdList, false);
        
        for(Database.saveResult s: saveList)
        
        {
        
            If (s.isSuccess())
            {
                count++;
            }
        
        }
        
        if(count > 3 )
        {
            Database.rollback(sp1);
        }
        
        

    }
}