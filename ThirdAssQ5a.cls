public class ThirdAssQ5a
{
	public static void main()
    {
        List<Student__c> stdList = [ Select id from Student__c where Student_name__c like '_R%'];
        
        //delete stdList;
        
        List<Student__c> delList = [select id from Student__c where Student_name__c like '_R%' AND isDeleted = true ALL ROWS ];
        //permanantly delete
        //Database.emptyRecycleBin(delList);
    }
}