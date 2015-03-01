class CreateWorkshopLocations < ActiveRecord::Migration
  def change
    create_table :workshop_locations do |t|
    	
    	t.string	:location_name
    	t.string 	:street_address
    	t.string 	:street_address_2
    	t.string 	:city
    	t.string 	:state
    	t.integer 	:zip

    end
  end
end
