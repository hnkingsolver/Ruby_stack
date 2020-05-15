class User < ActiveRecord::Base
  has_secure_password

  has_many :events

  has_many :messages

  has_many :attends
  has_many :attending, through: :attends, source: :event

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, :city, :state, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }

  before_save :email_lowercase

  def email_lowercase #make email lowercase before submission have to
    email.downcase!
  end
  
end
