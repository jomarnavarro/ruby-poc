require_relative '../utils/libs.rb'
class PageObject
	include Libs

	class << self
		attr_accessor :definitions, :driver

		def define(name, locator)
			@definitions = {} unless defined?(@definitions)
			@definitions[name.to_s] = locator
		end
	end

	def get(name)
		name = name.delete(' ').underscore
		locator = self.class.definitions[name.to_s]
		raise("Definition not found for #{name}") unless locator
		@driver.find_element(locator)
	end	

end`