class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
    	t.string :store_name
    	t.string :store_location
    	t.string :address
    	t.string :city
    	t.string :state
    	t.string :zip_code
    	t.float :lat
    	t.float :lng
    	t.string :county

     	t.timestamps
    end
  end
end
