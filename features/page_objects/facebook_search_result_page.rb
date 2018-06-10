
class FacebookSearchResultsPage
  include PageObject

  PERSON_CARDS_XPATH = '//div[contains(@data-xt, "browse_type_user")]'.freeze
  FRIEND_REQUEST_BTN_XPATH = './/button[contains(@class, "FriendRequestAdd")]'.freeze
  span(:facebook_logo, xpath: '//span[text() = "Facebook"]')
  text_field(:search_txt, name: 'q')
  button(:search_btn, xpath: '//button[@data-testid="facebar_search_button"]')
  div(:person_card, xpath: PERSON_CARDS_XPATH)

  def at?()
    facebook_logo?
  end

  def verify_friend(friend_info)
    self.wait_until do
      person_card?
    end
    friend_card = person_card_element.siblings.find { |elem| elem.text.include?(friend_info.strip) }
    raise("Friend info #{friend_info} not found.") unless friend_card.check_visible
  end
end
