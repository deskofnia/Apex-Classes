public class Q5d {
	
    public static void main(string course, Integer fee1, Integer fee2)
    {
        List<Student__c> student = [select Student_name__c, Deposited_Fees__c, Course_Opted__c from Student__c where Course_Opted__c = :course AND Deposited_Fees__c <: fee2 AND Deposited_Fees__c >: fee1];
        
        for(Student__c st: student)
        {
            system.debug('Student Name: '+st.Student_name__c+' | '+st.Course_Opted__c +' | '+st.Deposited_Fees__c);
        }
        
    }
}