class ApplicationQuestion < ActiveRecord::Base
	has_and_belongs_to_many		:applications
end