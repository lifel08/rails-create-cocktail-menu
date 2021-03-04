class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates :ingredient, uniqueness: { scope: :cocktail }
end

# VALIDATION
# Exercise: "..and [cocktail, ingredient] pairings should be unique. ?""
# Explanation: within in the scope of something that we declare,
# we want it's uniqueness to be true
# go to different "validation types", to choose the correct one

# TASK
# Validation
# A dose must have a description, a cocktail and an ingredient,
# and [cocktail, ingredient] pairings should be unique. (D? )

# Associations
# A dose belongs to an ingredient (D)
# A dose belongs to a cocktail (D)
