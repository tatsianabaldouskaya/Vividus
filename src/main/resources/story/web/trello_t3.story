Description: Sign in and navigate through pages ;


Scenario: check ui-controls
Given I am on the main application page

When I click on element located `By.xpath(//a[text() = 'Log in'])`
Then the page title contains 'Log in to Trello'
Then the page with the URL containing '/login' is loaded
When I login as existing user
When I wait until an element with the tag 'div' and attribute 'title'='Tatyana (tatyana92399731)' appears

When I click on element located `By.xpath(//div[@class = 'board-tile mod-add'])`

When the condition '#{eval("<class>"=="_2RESlz4Z1kkkKj"}' is true I do
|step|
|When I enter `MyBoard3` in field located `By.xpath(//*[@placeholder = 'Add board title'])`|
|When I click on element located `By.xpath(//button[text() = 'Create Board'])`|
|Then element located 'By.xpath(//div[@class = 'board-tile mod-add'])' disappears in '2'|














