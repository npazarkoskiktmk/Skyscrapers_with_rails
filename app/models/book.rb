class Book < ApplicationRecord
    has_many :feedbacks, dependent: :destroy
    validates :title, presence: true
end
