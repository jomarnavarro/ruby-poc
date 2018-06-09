def ensure_page(page_object_class)
	return if @page.is_a?(page_object_class)
	@page = page_object_class.new(@driver)
	assert @page.is_at?
end

Before do |scenario|
	@config = YAML.load_file('./features/support/props.conf')
	options = Selenium::WebDriver::Chrome::Options.new
	options.add_argument('--disable-notifications')
	@driver = Selenium::WebDriver.for @config['browser'], options: options
	@driver.navigate.to @config['url']

	ensure_page(FacebookLoginPage)	
end	

After do |scenario|
	@driver.quit
end