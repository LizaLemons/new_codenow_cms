class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
    	t.string		:partner_name
    end
  end
end
