def ensure_page(page_object_class)
	return if @page.is_a?(page_object_class)
	@page = page_object_class.new(@driver)
end

Before do |scenario|
	@config = YAML.load_file('./features/support/props.conf')
	@prefs = {credentials_enable_service: false}
	caps = Selenium::WebDriver::Remote::Capabilities.chrome("chromeOptions" => {"args" => [ "--disable-notifications" ]})

	@driver = Selenium::WebDriver.for @config['browser'], prefs: @prefs, desired_capabilities: caps
	@driver.navigate.to @config['url']

	ensure_page(FacebookLoginPage)	
end	

After do |scenario|
	@driver.quit
end