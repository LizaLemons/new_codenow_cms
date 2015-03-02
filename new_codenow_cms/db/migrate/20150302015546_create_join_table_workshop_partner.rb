class CreateJoinTableWorkshopPartner < ActiveRecord::Migration
  def change
    create_join_table :workshops, :partners do |t|
      t.index [:workshop_id, :partner_id]
      t.index [:partner_id, :workshop_id]
    end
  end
end
