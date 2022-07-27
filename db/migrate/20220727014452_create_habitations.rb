class CreateHabitations < ActiveRecord::Migration[7.0]
  def change
    create_table :habitations do |t|
      t.string :type
      t.boolean :airc
      t.boolean :private_bat

      t.timestamps
    end
  end
end
