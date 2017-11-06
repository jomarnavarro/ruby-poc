When(/^User inputs (.*) and (.*)$/) do |user, password|
    @page.login(user, password)
    puts "User inputs #{user} and #{password}"#pending # Write code here that turns the phrase above into concrete actions
end

Given(/^User is logged onto Facebook with (.*) and (.*)$/) do |user, password|
    @page.login(user, password)
    puts "User inputs #{user} and #{password}"#pending # Write code here that turns the phrase above into concrete actions

end
