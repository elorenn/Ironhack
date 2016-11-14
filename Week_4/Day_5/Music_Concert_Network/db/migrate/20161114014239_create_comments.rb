class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
    	t.integer :concert_id
    	t.string :user
    	t.datetime :date
    	t.text :comment

      t.timestamps
    end
  end
end
