class RegistrationGroup < ApplicationRecord
	belongs_to :event_group
	belongs_to :user
end
