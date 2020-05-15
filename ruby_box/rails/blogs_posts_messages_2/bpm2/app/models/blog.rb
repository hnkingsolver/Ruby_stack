class Blog < ActiveRecord::Base
    has_many :owners
    has_many :posts

    # all the users that own a specifc blog
    has_many :users, through: :owners

    # all the users that posted on a specific blog
    has_many :user_posts, through: :posts, source: :user

    validates :name, :desc, presence: true
end
