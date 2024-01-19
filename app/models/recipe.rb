class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy
  accepts_nested_attributes_for :recipe_foods
  has_many :foods, through: :recipe_foods

  validates :name, presence: true
  validates :title, presence: true
  validates :preparation_time, presence: true
  validates :cooking_time, presence: true
  validates :description, presence: true
end
