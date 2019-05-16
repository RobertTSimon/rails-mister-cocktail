class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true, allow_nil: false
  validates :cocktail, uniqueness: { scope: :ingredient }
end
