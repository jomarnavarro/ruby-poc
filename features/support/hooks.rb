def ensure_page(page_object_class)
  return if @page.is_a?(page_object_class)
  @page = page_object_class.new(@driver)
  assert @page.at?
end

Before do |scenario|
  @config = YAML.load_file('./features/support/props.conf')
  @driver = Watir::Browser.new @config['browser']
  @driver.goto @config['url']
  ensure_page(GoogleHomePage)
end

After do |scenario|
  @driver.quit
end
