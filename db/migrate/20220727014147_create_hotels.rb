class CreateHotels < ActiveRecord::Migration[7.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :adress
      t.integer :num_room

      t.timestamps
    end
  end
end
