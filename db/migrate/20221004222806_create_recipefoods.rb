class CreateRecipefoods < ActiveRecord::Migration[7.0]
  def change
    create_table :recipefoods do |t|
      t.float :quantity
      t.references :recipe, null: false, foreign_key: true
      t.references :food, null: false, foreign_key: true

      t.timestamps
    end
  end
end
