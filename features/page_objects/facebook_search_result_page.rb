
class FacebookSearchResultsPage
  include PageObject

  span(:facebook_logo, xpath: '//span[text() = "Facebook"]')
  text_field(:search_txt, name: 'q')
  button(:search_btn, xpath: '//button[@data-testid="facebar_search_button"]')
  div(:persons_section, xpath: '//div[@id="BrowseResultsContainer"]//span[text() = "Personas"]')
  div(:persons_search_result, xpath: '//div[@id="BrowseResultsContainer"]//div[text() = "Teo Garcia"]')
  div(:friend_request_add_btn, xpath: './../following-sibling::div//button[contains(@class, "FriendRequestAdd")]')

  def at?()
    facebook_logo?
  end
end
