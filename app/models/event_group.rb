class EventGroup < ApplicationRecord
	has_many :events

	has_many :registration_groups
end

