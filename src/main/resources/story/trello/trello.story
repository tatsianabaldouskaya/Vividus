Description: Register an account ;


Scenario: To sign up on trello.com
Given I am on a page with the URL 'https://trello.com/en'
When I click on element located `By.xpath(//a[text()='Sign up'])`
Then the page with the URL 'https://trello.com/signup' is loaded


When I initialize the story variable `testUserEmail` with value `#{toUpperCase(${testUserEmail})}`
When I enter `${testUserEmail}@dev.com` in field located `By.id(email)`
When I click on element located `By.id(signup-submit)
Then the page with the URL containing 'https://id.atlassian.com/signup?application=trello&continue=https%3A%2F%2Ftrello.com' is loaded
`
