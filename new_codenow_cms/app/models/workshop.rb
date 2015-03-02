class Workshop < ActiveRecord::Base
	has_and_belongs_to_many 	:users
	has_and_belongs_to_many 	:sponsors
	has_and_belongs_to_many 	:partners
	has_many 					:applicants
	belongs_to 					:workshop_location
end