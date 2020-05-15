class Blog < ActiveRecord::Base
    has_many :posts
    validates :name, :desc, presence: true
end
