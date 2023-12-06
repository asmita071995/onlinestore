class User < ApplicationRecord
	has_secure_password
	validates :email, presence: true, uniqueness: true
    VALID_PASSWORD_REGEX = /\A(?=.*[a-z])(?=.*[A-Z])(?=.*[\W])(?=.*[\d])[\S]{8,15}\z/
end