class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
    	t.string	:sponsor_name
    end
  end
end
