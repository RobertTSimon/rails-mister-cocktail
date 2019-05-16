class Ingredient < ApplicationRecord
  has_many :cocktails, :doses

  validates :name, presence: true, uniqueness: true
end
