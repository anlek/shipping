# Author::    Andrew Kalek  (mailto:andrew.kalek@anlek.com)
# Copyright:: Copyright (c) 2008 Anlek Consulting
# License::   LGPL

module Shipping
	module Package
		class Base
			attr_accessor :package_type_code, :package_type_description
			attr_accessor :weight, :weight_units
			attr_accessor :measurement_units, :length, :width, :height
			attr_accessor :value, :currency_code
			
			def initialize(options = {})
				#setting defaults
				@code = 'your_packaging' # defaults to 'your packaging'
				@description = 'Package'
				@measurement_units = 'IN'
				@weight_units = 'LBS'
				@currency_code = 'US'
				
				# include all provided data
				options.each do |method, value| 
					instance_variable_set("@#{method}", value)
				end
				
				
			end
		end
	end
end