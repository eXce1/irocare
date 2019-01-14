class ChangeFugueToBeStringInBridges < ActiveRecord::Migration[5.2]
  def change
    change_column :bridges, :fugue, :string
  end
end
