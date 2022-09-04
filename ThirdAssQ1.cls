public class ThirdAssQ1 {
	public static void main()
    {
        List<Student__c> std = [select Student_name__c from Student__c where Student_name__c like 'S%'];
        
        integer i=1;
        
        for(Student__c st: std)
        {
            st.Student_Name__c = st.Student_Name__c+' Test'+i;
            i++;
        }
        
        update std;
        
    }
}