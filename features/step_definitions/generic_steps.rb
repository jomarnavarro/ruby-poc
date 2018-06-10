Given(/^User is on (.*)$/) do |page|
  case page
  when 'Facebook Login Page'
    ensure_page FacebookLoginPage
  when 'Facebook Home Page'
    ensure_page FacebookHomePage
  when 'Facebook Search Results Page'
    ensure_page FacebookSearchResultsPage
  end
end

When(/^User clicks on (.*)$/) do |lnk_btn|
  puts "User clicks on #{lnk_btn}"
end

Then(/^User is on (.)$/) do |page|
  puts "User is on #{page}"
end
