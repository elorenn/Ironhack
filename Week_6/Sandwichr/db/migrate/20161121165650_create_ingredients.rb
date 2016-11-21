class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.integer :sandwich_id	
      t.string :name
      t.integer :calories

      t.timestamps
    end
  end
end
