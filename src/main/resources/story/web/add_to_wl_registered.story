Description: Add movie to watchlist for registered user ;


Scenario: To sign in
Given I am on a page with the URL 'https://www.imdb.com/'

When I click on element located `By.xpath(//*[text()='Sign In'])`
When I click on element located `By.xpath(//*[text() = 'Sign in with IMDb'])`
Then the page title contains 'Sign-In'
When I enter `tatiana_b2012@mail.ru` in field located `By.id(ap_email)`
When I enter `*fK9$m4Q7qVR8%e` in field located `By.id(ap_password)`
When I click on element located `By.id(signInSubmit)`
Then field located `By.xpath(//*[text() = 'Tatsiana'])` exists


