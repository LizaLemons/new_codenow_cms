class Applicant < ActiveRecord::Base
	belongs_to 				:user
	belongs_to 				:workshop
end