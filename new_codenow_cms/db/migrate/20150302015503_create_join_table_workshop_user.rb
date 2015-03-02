class CreateJoinTableWorkshopUser < ActiveRecord::Migration
  def change
    create_join_table :workshops, :users do |t|
      t.index [:workshop_id, :user_id]
      t.index [:user_id, :workshop_id]
    end
  end
end
