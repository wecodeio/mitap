class AddEndHourToEvents < ActiveRecord::Migration[5.2]
 def change
  	add_column :events, :end_hour, :time
  end
end
