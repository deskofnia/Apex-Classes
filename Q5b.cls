public class Q5b {
	
    public static void main()
    {
        List<String> Arguments = new List<String>{'John', 'Jack', 'Will', 'David'};
        List<Student__c> std = [select Student_name__c, Joining_Date_and_Time__c from Student__c where Student_name__c IN :Arguments AND Joining_Date_and_Time__c = THIS_FISCAL_QUARTER];
        
        for(Student__c st : std)
        {
            system.debug('Student Name'+st.Student_name__c+' | '+st.Joining_Date_and_Time__c);
        }
        
    }
}