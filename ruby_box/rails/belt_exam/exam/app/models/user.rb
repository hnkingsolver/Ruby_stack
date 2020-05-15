class User < ActiveRecord::Base
  has_secure_password

  has_many :likes
  has_many :ideas
  has_many :ideas_liked, through: :likes, source: :ideas

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, :alias, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  validates :password, presence: true, length: { in: 8..30 } 
  before_save :email_lowercase

  def email_lowercase #make email lowercase before submission have to
    email.downcase!
  end
end
