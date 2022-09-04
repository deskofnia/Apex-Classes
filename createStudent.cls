@RestResource(urlMapping='/createStudentRecord')
global class createStudent {

    @HttpPost
    global static string myMethod()
    {
        RestRequest req = RestContext.request;
        
        System.debug(req);
        
        String str = req.requestBody.toString();
        
        System.debug(str);
        
        return 'Test';
    }
}