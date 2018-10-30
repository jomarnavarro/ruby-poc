##
# Declares GoogleHomePage as a page object.
class GoogleHomePage
  include PageObject

  text_field(:search_txt, :name => 'q')
  button(:search_btn, :xpath => '//input[@class = "lsb"]')
  unordered_list(:search_options, :xpath => '//ul[@role="listbox"]')

  def at?()
    [
      search_txt_element.present?,
      search_btn_element.present?
    ].all?
  end

  def search_keyword(keyword)
    self.search_txt = keyword
    self.search_options_element.present?
    self.search_btn
  end
end
