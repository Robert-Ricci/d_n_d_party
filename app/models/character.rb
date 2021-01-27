class Character < ApplicationRecord
    belongs_to :user
    # has_one :race

    validates :name, presence: true, uniqueness: true
    validates :race_name, presence: true
    validates :klass, presence: true
   
end
