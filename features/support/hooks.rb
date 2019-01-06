def ensure_page(page_object_class)
  return if @page.is_a?(page_object_class)
  @page = page_object_class.new(@driver)
  raise("#{page_object_class.to_s} not reached.") unless @page.at?
end

Before do |scenario|
  @config = YAML.load_file('./features/support/props.conf')
  @driver = Selenium::WebDriver.for @config['browser']
  @driver.navigate.to @config['url']
  ensure_page(GoogleHomePage)
end

After do |scenario|
  @driver.quit
end
