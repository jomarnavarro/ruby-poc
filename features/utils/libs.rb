module Libs
	def get(element_name)
		locator = self.class.definitions[element_name.to_s]
		raise("Definition for #{element_name} not found") unless locator
		@driver.find_element(locator)
	end

	def click(button_name)
		button = get(button_name)
		raise("Button #{button_name} not found") unless button
		button.click
	end

	def input(value, input_name)
		field = get(input_name)
		raise("Field #{input_name} not found") unless field
		field.clear()
		field.send_keys(value)
	end	

	def present?(element_name)
		element = get(element_name)
		raise("Element #{element_name} not found") unless element
		element ? element.displayed? : false
	end
end