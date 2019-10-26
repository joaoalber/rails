class AddFieldsToRecipeType < ActiveRecord::Migration[5.2]
  def change
    add_column :recipe_types, :name, :string
    add_reference :recipe_types, :recipe
  end
end
