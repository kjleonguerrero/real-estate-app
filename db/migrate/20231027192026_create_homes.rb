class CreateHomes < ActiveRecord::Migration[7.0]
  def change
    create_table :homes do |t|
      t.string :description
      t.integer :year_built
      t.decimal :square_feet, precision: 5, scale: 0
      t.integer :bedrooms
      t.decimal :bathrooms, precision: 2, scale: 0
      t.integer :floors
      t.boolean :availability
      t.string :address
      t.decimal :price, precision: 11, scale: 0

      t.timestamps
    end
  end
end
