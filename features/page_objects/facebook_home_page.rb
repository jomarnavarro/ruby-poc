##
# Declares FacebookHomePage as a page object.
class FacebookHomePage
    include PageObject

    text_field(:facebook_logo, :xpath => '//span[text() = "Facebook"]')
    text_field(:search_txt, :name => 'q')
    button(:search_btn, :xpath => '//button[@data-testid="facebar_search_button"]')

    def is_at?()
        [
            facebook_logo_element,
            facebook_logo_element
        ].all? { |elem| elem.present?}   
    end

    def search_friend(friend_name)
        self.search_txt = friend_name
        search_btn
    end

end