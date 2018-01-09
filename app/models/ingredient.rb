class Ingredient < ApplicationRecord
  belongs_to :department

  validates_presence_of :department, :name, :created_by
end
