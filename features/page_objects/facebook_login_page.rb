require_relative './page_object'
class FacebookLoginPage < PageObject

    define :email_txt, id: 'email'
    define :pass_txt, id: 'pass'
    define :login_btn, id: 'loginbutton'

    def initialize(driver)
        @driver = driver
    end

    def login(user, pass)
        input(user, :email_txt)
        input(pass, :pass_txt)
        click(:login_btn)
        begin
            driver.execute_script("window.confirm = function(msg) { return true; }")
        rescue => exception
            
        end
        

    end

    def is_at?()
        present?(:email_txt) &&
        present?(:pass_txt) &&
        present?(:login_btn)
    end

end