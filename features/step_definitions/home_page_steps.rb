When(/^User searches (.*)$/) do |friend_name|
  ensure_page FacebookHomePage
  @page.search_friend(friend_name)
end

Then(/^User finds friend with(.*)$/) do |friend_info|
  ensure_page FacebookSearchResultsPage
  @page.verify_friend(friend_info)
end
