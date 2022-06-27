class Item < ApplicationRecord
  belongs_to :city

  validates :name, presence: true, length: { minimum: 3, maximum: 50 }, allow_blank: false
  validates :city_id, presence: true, length: { in: 1..100 }, allow_blank: false
  validates :quantity, presence: true, numericality: { greater_than: 0 }, allow_blank: false
end
