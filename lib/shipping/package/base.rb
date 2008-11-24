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



=begin

	b.Package { |b| # Package Details					
		b.PackagingType { |b|
			b.Code PackageTypes[@packaging_type] || '02' # defaults to 'your packaging'
			b.Description 'Package'
		}
		b.Description 'Rate Shopping'
		b.PackageWeight { |b|
			b.Weight @weight
			b.UnitOfMeasurement { |b|
				b.Code @weight_units || 'LBS' # or KGS
			}
		}
		b.Dimensions { |b|
			b.UnitOfMeasurement { |b|
				b.Code @measure_units || 'IN'
			}
			b.Length @measure_length || 0
			b.Width @measure_width || 0
			b.Height @measure_height || 0
		}
		b.PackageServiceOptions { |b|
			b.InsuredValue { |b|
				b.CurrencyCode @currency_code || 'US'
				b.MonetaryValue @insured_value
			}
		}
	}

=end