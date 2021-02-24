Description: Sign in and navigate through pages ;


Scenario: To sign in
Given I am on the main application page

When I click on element located `By.xpath(//a[text() = 'Log in'])`
Then the page title contains 'Log in to Trello'
Then the page with the URL containing '/login' is loaded
When I enter `${userEmail}` in field located `By.id(user)`
When I click on element located `By.id(login)`
When I enter `${mypassword}` in field located `By.id(password)`
When I click on element located `By.id(login-submit)`


When I wait until an element with the tag 'div' and attribute 'title'='Tatyana (tatyana92399731)' appears




When I click on element located `By.xpath(//li/a[contains(@href,'/my_team100/account')])`
Then the page with the URL containing '/my_team100/account' is loaded









