Description: Register an account ;


Scenario: To sign up on trello.com
Given I am on a page with the URL 'https://trello.com/en'
When I click on element located `By.xpath(//a[text()='Sign up'])`
Then the page with the URL 'https://trello.com/signup' is loaded


When I initialize the story variable `testUserEmail` with value `#{generate(Internet.emailAddress)}`
When I enter `${testUserEmail}` in field located `By.id(email)`
When I click on element located `By.id(signup-submit)`
When I wait until an element with the tag 'input' and attribute 'id'='displayName' appears

When I enter `<testUserName>` in field located `By.id(displayName)`
When I enter `<testUserPass>` in field located `By.id(password)`
When I click on element located `By.id(signup-submit)`
Examples:
|testUserName               |testUserPass                           |
|#{generate(Name.firstName)}|#{generate(regexify'[a-z]{5}[0-9]{3}')}|
|#{generate(Name.firstName)}|#{generate(regexify'[a-z]{5}[0-9]{3}')}|
|Elena                      |asdfg789                               |







