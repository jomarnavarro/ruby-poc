When(/^User clicks on (.*)$/) do |hyperlink|
  ensure_page GoogleResultsPage
  @page.click_link(hyperlink)
end
