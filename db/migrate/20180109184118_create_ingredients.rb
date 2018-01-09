class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :created_by
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
