Given(/^User is on (.*)$/) do |page|
  case page
  when 'Facebook Login Page'
  		ensure_page FacebookLoginPage
  when 'Facebook Home Page'
  		ensure_page FacebookHomePage
  when 'Facebook Search Results Page'
  		ensure_page FacebookSearchResultsPage
end

When(/^User clicks on (.*)$/) do |lnk_btn|
  puts "User clicks on #{lnk_btn}"#pending # Write code here that turns the phrase above into concrete actions
end

When(/^User inputs (.*) and (.*)$/) do |user, password|
  puts "User inputs #{user} and #{password}"#pending # Write code here that turns the phrase above into concrete actions
end
	
Then(/^User is on (.)$/) do |page|
  puts "User is on #{page}"#pending # Write code here that turns the phrase above into concrete actions
end