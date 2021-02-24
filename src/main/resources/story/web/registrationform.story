Description: Register an account ;


Scenario: To resister on imdb.com
Given I am on a page with the URL 'https://www.imdb.com/'
When I click on element located `By.xpath(//*[text()='Sign In'])`
Then the page with the URL 'https://www.imdb.com/registration/signin?ref=nv_generic_lgin&u=%2F' is loaded

When I click on element located `By.xpath(//a[text() = 'Create a New Account'])`
When I enter `Tatsiana` in field located `By.id(ap_customer_name)`
When I enter `myemail@mail.ru` in field located `By.id(ap_email)`
When I enter `1234nm223fg` in field located `By.id(ap_password)`
When I enter `1234nm223fg` in field located `By.id(ap_password_check)`
When I click on element located `By.id(continue)`

Then field located `By.xpath(//input[@name = 'cvf_captcha_input'])` exists
