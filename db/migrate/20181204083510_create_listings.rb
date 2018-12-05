class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|

      t.string :title
      t.text :description
      t.string :city
      t.string :state
      t.string :zipcode
      t.integer :category_id
      t.integer :subcategory_id
      t.timestamps
    end
  end
end
