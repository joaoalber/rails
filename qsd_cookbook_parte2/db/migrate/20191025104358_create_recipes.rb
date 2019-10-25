class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :recipe_type
      t.string :cuisine
      t.string :string
      t.string :difficulty
      t.string :string
      t.integer :cook_time

      t.timestamps
    end
  end
end
