Given(/^User is on (.*)$/) do |page|
  case page
  when 'Facebook Login Page'
  		ensure_page FacebookLoginPage
      @page.is_at?()
  when 'Facebook Home Page'
  		ensure_page FacebookHomePage
      @page.is_at?()
  when 'Facebook Search Results Page'
  		ensure_page FacebookSearchResultsPage
      @page.is_at?()
  end
end

When(/^User clicks on (.*)$/) do |lnk_btn|
  puts "User clicks on #{lnk_btn}"#pending # Write code here that turns the phrase above into concrete actions
end


	
Then(/^User is on (.)$/) do |page|
  puts "User is on #{page}"
end