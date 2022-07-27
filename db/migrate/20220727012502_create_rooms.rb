class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.integer :number_pax
      t.integer :numbre_hab
      t.integer :id_hotel
      t.integer :id_habitation

      t.timestamps
    end
  end
end
