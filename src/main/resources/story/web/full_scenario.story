Description: Add movie to watchlist for registered user ;


Scenario: To sign in
Given I am on the main application page


When I click on element located `By.xpath(//*[text()='Sign In'])`
When I click on element located `By.xpath(//*[text() = 'Sign in with IMDb'])`
Then the page title contains 'Sign-In'
When I login as a registered user
Then field located `By.xpath(//*[text() = 'Tatsiana'])` exists

Scenario: add movies to watchlist

When I click on element located `By.xpath(//*[@role='combobox'])`
When I enter `Shrek` in field located `By.xpath(//*[@name='q'])`
When I click on element located `By.id(suggestion-search-button)`

When I click on element located `By.xpath(//a[contains(@href, '/title/tt0126029/?ref_=fn_al_tt_1') and text() = 'Shrek'])`
When I click on element located `By.xpath(//div[text() = 'Add to Watchlist'])`
Then field located `By.xpath(//div[text() = 'Added to Watchlist'])` exists


When I click on element located `By.xpath(//*[@role='combobox'])`
When I enter `Soul` in field located `By.xpath(//*[@name='q'])`
When I click on element located `By.id(suggestion-search-button)`


When I click on element located `By.xpath(//*[text() = 'Soul'])`
When I click on element located `By.xpath(//div[text() = 'Add to Watchlist'])`
Then field located `By.xpath(//div[text() = 'Added to Watchlist'])` exists


Scenario: Download list of movies

When I click on element located `By.xpath(//div[text() = 'Watchlist'])`
Then the page with the URL containing 'user/ur129744189/watchlist?ref_=nv_usr_wl_all_0' is loaded


When I click on an element 'By.xpath(//a[text() = 'Export this list'])' then the page does not refresh













