class CreateRegistrationGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :registration_groups do |t|
      t.integer :event_group_id
      t.integer :user_id

      t.timestamps
    end
  end
end
