class EventGroup < ApplicationRecord
	has_many :events

	has_many :registration_groups
	has_many :users, through: :registration_groups

	validates :name,  presence: true
	validates :name, length: { in: 4..30 }
end

