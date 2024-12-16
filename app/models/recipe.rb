class Recipe < ApplicationRecord
  validates :title, presence: true
  validates :making_time, presence: true
  validates :serves, presence: true
  validates :ingredients, presence: true
  validates :cost, presence: true
end