Description: Go to sign in ;


Scenario: add to wishlist
Given I am on a page with the URL 'https://www.imdb.com/'
When I click on element located `By.xpath(//*[@role='combobox'])`
When I enter `Shrek` in field located `By.xpath(//*[@name='q'])`
When I click on element located `By.id(suggestion-search-button)`
Then the text 'Results for "Shrek"' exists

When I click on element located `By.xpath(//*[text() = 'Shrek'])`
Then the text 'Add to Watchlist' exists
