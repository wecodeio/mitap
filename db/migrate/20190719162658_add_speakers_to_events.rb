class AddSpeakersToEvents < ActiveRecord::Migration[5.2]
  def change
  	add_column :events, :speakers, :string
  end
end
