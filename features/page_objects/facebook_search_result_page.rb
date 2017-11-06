require_relative './page_object'
class FacebookSearchResultsPage < PageObject

    define :facebook_logo, xpath: '//span[text() = "Facebook"]'
    define :search_txt, name: 'q'
    define :search_btn, xpath: '//button[@data-testid="facebar_search_button"]'
    define :persons_section, xpath: '//div[@id="BrowseResultsContainer"]//span[text() = "Personas"]'
    define :persons_search_result, xpath:'//div[@id="BrowseResultsContainer"]//div[text() = "Teo Garcia"]'
    define :friend_request_add_btn, xpath: './../following-sibling::div//button[contains(@class, "FriendRequestAdd")]'

    def initialize(driver)
        @driver = driver
    end

    def is_at?()
        present?(:facebook_logo) #&&
        #present?(:search_txt) #&&
        #present?(:persons_section)
    end

end