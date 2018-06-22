Feature: Demo Karate against Jenkins
Scenario: Verify that Jenkins is up and running
Given url 'https://github.com/samavardhan'
When method get
Then status 200
#And match response.jobs[*].name contains ['job1']
