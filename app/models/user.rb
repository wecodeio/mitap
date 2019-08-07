class User < ApplicationRecord
	has_secure_password
    
	validates_uniqueness_of :email

	has_many :registrations

	has_many :registration_groups
end
