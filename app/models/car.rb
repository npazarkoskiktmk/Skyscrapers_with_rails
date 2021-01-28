class Car < ApplicationRecord
    validates :model, :constructor, :year, presence: true
end
