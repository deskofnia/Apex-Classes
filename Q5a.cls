public class Q5a {
    
   public static void main()
   {
        List<List<sObject>> obj = [find '*testing*' RETURNING Student__c(Student_name__c), Feculty__c(name)];
    
        List<Student__c> Std = (List<Student__c>)obj[0];
        List<Feculty__c> Fect = (List<Feculty__c>)obj[1];		//faculty name galat hai don't mind
        
        for(Student__c st: Std)
        {
            system.debug('Student Name: '+st.Student_name__c);
        }
        
        for(Feculty__c ft: Fect)
        {
            system.debug('Faculty Name: '+ft.name);
        }
   }
    

}