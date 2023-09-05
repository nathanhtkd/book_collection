class Book < ApplicationRecord
    validates :title, presence: true
    validates :author, presence: true
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 0, message: "must be a positive value" }
    validates :published, presence: true
end
