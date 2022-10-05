class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipefood, dependent: :destroy
  has_many :foods, through: :recipefood
end
