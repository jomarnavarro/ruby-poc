##
# Declares FacebookHomePage as a page object.
class FacebookHomePage
  include PageObject

  span(:facebook_logo, :xpath => '//span[text() = "Facebook"]')
  text_field(:search_txt, :name => 'q')
  button(:search_btn, :xpath => '//button[@data-testid="facebar_search_button"]')

  def at?()
    [
      facebook_logo_element.present?,
      search_txt?,
      search_btn?
    ].all?
  end

  def search_friend(friend_name)
    self.search_txt = friend_name
    search_btn
  end
end
