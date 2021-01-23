class Character < ApplicationRecord
    belongs_to :user
    has_one :race

    validates :name, presence: true, uniqueness: true
    validates :race, presence: true
    validates :klass, presence: true
   
end
