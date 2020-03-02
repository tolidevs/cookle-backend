class CreateSavedRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :saved_recipes do |t|
      t.references :user, null: false, foreign_key: true
      t.string :recipe_id

      t.timestamps
    end
  end
end
