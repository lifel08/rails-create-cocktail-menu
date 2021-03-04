class Cocktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
end


  # has_many :reviews, dependent: :destroy

# TASK

# Validation
# A cocktail must have a unique name. (D

# Associations
# A cocktail has many doses (D)
# A cocktail has many ingredients through doses (D)

# When you delete a cocktail, you should delete associated doses
# (but not the ingredients as they can be linked to other cocktails).
