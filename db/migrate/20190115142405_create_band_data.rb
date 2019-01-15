class CreateBandData < ActiveRecord::Migration[5.2]
  def change
    create_table :band_data do |t|
      t.integer :battery
      t.integer :bpm
      t.integer :temperature
      t.string :location
      t.integer :pas
      t.references :band, foreign_key: true

      t.timestamps
    end
  end
end
