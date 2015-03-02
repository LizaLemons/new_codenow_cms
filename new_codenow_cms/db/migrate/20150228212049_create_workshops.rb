class CreateWorkshops < ActiveRecord::Migration
  def change
    create_table :workshops do |t|
    	t.date			:workshop_date 
    	t.references	:workshop_location
    end
  end
end
