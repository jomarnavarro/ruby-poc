Given(/^User is on (.*)$/) do |page|
  case page
  when 'Google Home Page'
    ensure_page GoogleHomePage
  when 'Google Results Page'
    ensure_page GoogleResultsPage
  when 'InAllMedia Home Page'
    ensure_page InAllMediaHomePage
  end
end

Then(/^User is on (.)$/) do |page|
  puts "User is on #{page}"
end
