class Application < ActiveRecord::Base

	has_and_belongs_to_many		:application_questions

	validates_presence_of		:application_name, :application_type, :application_location


end
