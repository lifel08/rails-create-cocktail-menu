class Ingredient < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :cocktails, through: :doses
  has_many :doses
end

 # has_many :reviews, dependent: :destroy
 # You can’t delete an ingredient if it is used by at least one cocktail.

# TASK

# Validation
# An ingredient must have a unique name. (D)

# Associations
# An ingredient has many doses (D)
# You can’t delete an ingredient if it is used by at least one cocktail. (D?)
