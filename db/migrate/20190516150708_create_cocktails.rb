class CreateCocktails < ActiveRecord::Migration[5.2]
  def change
    create_table :cocktails do |t|
      t.string :name
      t.string :description
      t.string :ingredient
      t.string :url

      t.timestamps
    end
  end
end
