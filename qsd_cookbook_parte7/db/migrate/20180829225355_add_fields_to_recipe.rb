class AddFieldsToRecipe < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :ingredients, :text
    add_column :recipes, :cook_method, :text
    add_reference :recipes, :recipe_type
  end
end
