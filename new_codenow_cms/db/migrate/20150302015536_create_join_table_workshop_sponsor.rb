class CreateJoinTableWorkshopSponsor < ActiveRecord::Migration
  def change
    create_join_table :workshops, :sponsors do |t|
      t.index [:workshop_id, :sponsor_id]
      t.index [:sponsor_id, :workshop_id]
    end
  end
end
