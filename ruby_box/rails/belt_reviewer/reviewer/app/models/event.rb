class Event < ActiveRecord::Base
    belongs_to :user
    
    has_many :messages

    has_many :attends
    has_many :attendees, through: :attends, source: :user

    validates :name, :city, presence: true, length: { in: 2..30 }

    validates :state, presence: true

    validate :future_dated
    #alternative is validates_timeliness gem

    # def future_dated
    #     if date.present? && date < Date.today
    #         errors.add(:date, "Cant be in the past.")
    #     end
    # end
end
