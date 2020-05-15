class Student < ActiveRecord::Base
  belongs_to :dojo
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
	validates :first_name, :last_name, :email, presence: true, length: { in: 2..40 }
	validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }, length: { in: 4..40 }
end
