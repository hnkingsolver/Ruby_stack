class Dojo < ActiveRecord::Base
    has_many :ninjas, dependent: :destroy #dependent: :destroy deletes all instances of ninjas when a dojo is deleted
    validates :name, :city, :state, presence: true
    validates :state, length: {in: 2..2}
end
