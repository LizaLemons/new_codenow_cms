class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
    	t.string		:application_name
    	t.string		:application_type 
    	t.string		:application_location
    end
  end
end
