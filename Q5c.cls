public class Q5c {
	
    public static void main()
    {
        List<Student_in_Batch__c> student = [select Student_Enrolled_In_Batches__r.Student_name__c, Student_Enrolled_In_Batches__r.Course_Opted__c, Batch_in_which_Student_is_Enrolled__r.Course__r.Faculty_for_this_course__r.name from Student_in_Batch__c where Student_Enrolled_In_Batches__r.Course_Opted__c != 'php' AND Student_Enrolled_In_Batches__r.Student_name__c Like 'Kri%' AND Batch_in_which_Student_is_Enrolled__r.Course__r.Faculty_for_this_course__r.name Like 'Kri%' ];
        
        for(Student_in_Batch__c st: student)
        {
            system.debug('Student Name: '+st.Student_Enrolled_In_Batches__r.Student_name__c+' | '+st.Student_Enrolled_In_Batches__r.Course_Opted__c+' | '+'Faculty Name:'+ st.Batch_in_which_Student_is_Enrolled__r.Course__r.Faculty_for_this_course__r.name);
        }
        //select Batch_in_which_Student_is_Enrolled__r.Course__r.Faculty_for_this_course__r.name from Student_in_Batch__c
        //system.debug(student);
    }
}