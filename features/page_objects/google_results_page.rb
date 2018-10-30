##
# Declares GoogleResultsPage as a page object.
class GoogleResultsPage
  include PageObject

  text_field(:search_txt, :name => 'q')
  div(:results_container, :id => 'search')

  def at?()
    [
      search_txt_element.present?,
      results_container_element.present?
    ].all?
  end

  def click_link(hyperlink)
    self.class.link(:hl, :visible_text => hyperlink)
    self.hl
  end
end
