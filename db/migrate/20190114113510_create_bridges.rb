class CreateBridges < ActiveRecord::Migration[5.2]
  def change
    create_table :bridges do |t|
      t.string :location
      t.boolean :fugue
      t.date :last_connexion

      t.timestamps
    end
  end
end
