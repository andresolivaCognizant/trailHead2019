public class CORE_adrressValidatorCallout {
 
 
     /*  hI GIT first commit--- Next step branch
       curl -v "
       ***************************************************
      https://us-zipcode.api.smartystreets.com/lookup?
      auth-id=6a8aa643-2d30-7ded-0c3e-b6917f78d8a6&
      auth-token=1e75GlRdtMRuE7haEqQF&
      city=Gilbert&
      state=AZ&zipcode=85297"
      **********************************************
      */
   public void basicAuthCallout( string strPath ,string strCity, string strState, string strZipCode ){
     HttpRequest req = new HttpRequest();
     req.setEndpoint('https://us-zipcode.api.smartystreets.com/'+ strPath +'?auth-id=6a8aa643-2d30-7ded-0c3e-b6917f78d8a6&auth-token=1e75GlRdtMRuE7haEqQF&city='+ strCity +'&state='+ strState + '&zipcode=' + strZipCode );
     req.setMethod('GET');    
     system.debug('request @@@'+ req);
     Http http  = new Http();
     HTTPResponse res = http.send(req);
     System.debug( '\n ws response @@@'+ JSON.serializePretty( res.getBody( )) + '\n ws status @@@' + res.getstatus() );
   }
   
    public void validateAddressFreeForm(  ){
     HttpRequest req = new HttpRequest();
     req.setEndpoint('https://international-street.api.smartystreets.com/verify?'+
                        'auth-id=6a8aa643-2d30-7ded-0c3e-b6917f78d8a6&'+
                        'auth-token=1e75GlRdtMRuE7haEqQF&'+
                        'address1=Rua+Padre+Antonio+D%27Angelo+121&'+
                        'address2=Casa+Verde&'+
                        'locality=Sao+Paulo&'+
                        'administrative_area=SP&'+
                        'postal_code=02516-040&'+
                        'country=Brazil' );
     req.setMethod('GET');    
     system.debug('request @@@'+ req);
     Http http  = new Http();
     HTTPResponse res = http.send(req);
     System.debug( '\n ws response @@@'+ JSON.serializePretty( res.getBody( )) + '\n ws status @@@' + res.getstatus() );
   } 
}