class AddTotalCaloriesToSandwiches < ActiveRecord::Migration[5.0]
  def change
	# to the sandwiches table, add the column total_calories, 
	# which is an integer with the default value of 0:  	
    add_column :sandwiches, :total_calories, :integer, default: 0
  end
end
