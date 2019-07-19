class Event < ApplicationRecord
	validates :name, :place, :start_hour, :description, :event_date, :max_capacity, :speakers, presence: true
	validates :speakers, format: { with: /\A[a-zA-Z]+\z/}
	validates :name, length: { maximum: 30 }
	validates :place, length: { maximum: 30 }
	validates :name, uniqueness: true
	validates :description, length: { in: 50..300 }
end