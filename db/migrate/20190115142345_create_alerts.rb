class CreateAlerts < ActiveRecord::Migration[5.2]
  def change
    create_table :alerts do |t|
      t.date :date
      t.string :type
      t.string :location
      t.boolean :acquittement
      t.references :band, foreign_key: true

      t.timestamps
    end
  end
end
