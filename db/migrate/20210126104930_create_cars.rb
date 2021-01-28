class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :constructor
      t.integer :year

      t.timestamps
    end
  end
end
