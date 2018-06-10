
class FacebookLoginPage
  include PageObject

  text_field(:email_txt, :id => 'email')
  text_field(:pass_txt, :id => 'pass')
  button(:login_btn, :xpath => '//*[@data-testid="royal_login_button"]')

  def login(user, pass)
    self.email_txt = user
    self.pass_txt = pass
    login_btn
  end

  def is_at?()
    [
      email_txt_element,
      pass_txt_element,
      login_btn_element
    ].all? { |elem| elem.present? }
  end
end
