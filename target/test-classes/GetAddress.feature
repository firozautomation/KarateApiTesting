Feature: Send Request for Google maps with Location
Scenario: Verify that map data are received when sending address to the google map service
Given url 'http://maps.googlemaps.com/maps/api/geocode/xml?'
And params {address: '75, Perera Mawatha, Pellawatte, Batharamulla'}
When method get
Then status 404
And match response.GeocodeResponse.status contains 'OK'