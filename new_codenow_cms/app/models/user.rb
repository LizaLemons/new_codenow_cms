class User < ActiveRecord::Base
	has_many 					:applicants
	has_and_belongs_to_many		:workshops
	validates_presence_of		:first_name, :last_name, :type
end
