When(/^User searches (.*)$/) do |friend_name|
  ensure_page FacebookHomePage
  @page.search_friend(friend_name)
end
