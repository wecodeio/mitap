class CreatesEvents < ActiveRecord::Migration[5.2]
  def change
  	create_table :events do |t|
  		t.string	:name
  		t.date		:event_date
  		t.time		:start_hour
  		t.text		:description
  		t.integer	:max_capacity
  		t.string	:place

  		t.timestamps
  	end
  end
end
