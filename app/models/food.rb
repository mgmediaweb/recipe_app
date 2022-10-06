class Food < ApplicationRecord
  belongs_to :user
  has_many :recipefood, dependent: :destroy
  has_many :recipes, through: :recipefood
end
