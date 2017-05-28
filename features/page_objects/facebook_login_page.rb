require_relative './page_object'
class FacebookLoginPage < PageObject

    define :email_txt, id: 'email'
    define :pass_txt, id: 'pass'

    def initialize(driver)
        @driver = driver
    end

end