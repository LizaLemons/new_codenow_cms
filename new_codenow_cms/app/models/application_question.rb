class ApplicationQuestion < ActiveRecord::Base
	has_and_belongs_to_many		:applications
	validates_presence_of		:first_name, :last_name, :email, :street_addres_1, :city, :state, :birthdate, :gender, :school
	validates 					:zip, numericality: {only_integer: true}
end