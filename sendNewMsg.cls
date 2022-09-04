public class sendNewMsg
{
    @future(callout=true)
	public static void myMethod(String phone, String Name, String email)
    {
        HttpRequest req = new HttpRequest();
        
        req.setEndpoint('https://api.twilio.com/2010-04-01/Accounts/ACc6324f7fd007428af8082702de799bcd/Messages.json');
        req.setMethod('POST');
        
        Blob b = Blob.valueOf('ACc6324f7fd007428af8082702de799bcd:cfdb54d151fcb0ec117b64f1e8b04a52');
        
        String token = EncodingUtil.base64Encode(b);
        
        req.setHeader('Authorization', 'Basic '+token);
        
        String body = 'From='+EncodingUtil.urlEncode('+19378882857', 'UTF-8')+'&To='+EncodingUtil.urlEncode(phone, 'UTF-8')+'&Body='+EncodingUtil.urlEncode('Hello ! How are you '+name+' ?', 'UTF-8');
        req.setBody(body);
        
        
        HttpResponse res = new HttpResponse();
        Http htp = new http();
        
        res = htp.send(req);
        
        System.debug(res.getBody());
    }
}