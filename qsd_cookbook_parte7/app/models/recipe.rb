class Recipe < ApplicationRecord
  belongs_to :recipe_type
  accepts_nested_attributes_for :recipe_type, allow_destroy: true
  validates :title, :recipe_type, :cuisine, :difficulty, :cook_time,
            :ingredients, :cook_method, presence: true

  def cook_time_min
    "#{cook_time} minutos"
  end

end
