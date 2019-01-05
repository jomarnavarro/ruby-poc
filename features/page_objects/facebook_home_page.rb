require_relative './page_object'
class FacebookHomePage < PageObject

  define :facebook_logo, xpath: '//span[text() = "Facebook"]'
  define :search_txt, name: 'q'
  define :search_btn, xpath: '//button[@data-testid="facebar_search_button"]'

  def initialize(driver)
    @driver = driver
  end

  def is_at?
    present?(:facebook_logo) &&
      present?(:search_txt)
  end

  def search_friend(friend_name)
    input(friend_name, :search_txt)
    click(:search_btn)
  end
end