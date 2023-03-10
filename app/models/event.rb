class Event < ApplicationRecord
    has_many :attendances
    has_many :users, through: :attendances
    validates :start_date, presence: true
    
    validates :title, presence: true, length: { in: 5..140 }
    validates :description, presence: true, length: { in: 20..1000 }
    validates :price, presence: true
    validates :duration,
    presence: true,
    numericality: { only_integer: true, greater_than: 0 }
    validate :multiple_of_5
    def multiple_of_5
        if duration != nil
        if duration % 5 != 0
          errors.add(:duration, "durée doit être multiple de 5")
        end
      end
      end
end