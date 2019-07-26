class CreateEventGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :event_groups do |t|
      t.string :name

      t.timestamps
    end
    add_column :events, :event_group_id, :integer
  end
end
