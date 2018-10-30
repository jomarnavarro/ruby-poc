When(/^User searches (.*)$/) do |keyword|
  ensure_page GoogleHomePage
  @page.search_keyword(keyword)
end
