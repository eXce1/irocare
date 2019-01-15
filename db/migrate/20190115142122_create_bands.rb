class CreateBands < ActiveRecord::Migration[5.2]
  def change
    create_table :bands do |t|
      t.date :last_connexion
      t.boolean :wear
      t.references :user, foreign_key: true
      t.references :bridge, foreign_key: true
      t.text :b_id

      t.timestamps
    end
  end
end
