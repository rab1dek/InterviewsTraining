public with sharing class GoogleWebService {
    public static void makeCallout() {
        HttpRequest request = new HttpRequest();
        request.setMethod('GET');
        //request.setMethod('GET');
        request.setEndpoint('callout:GoogleApex' + '/captions');
        //request.setEndpoint('callout:NAMED_CREDENTIALS_NAME' + '/users/me/calendarList');

        Http http = new Http();
        HTTPResponse response = http.send(request);

        if (response.getStatusCode() == 200) {
            System.debug(response.getBody());
        }
        System.debug(response.getBody());
    }
}
