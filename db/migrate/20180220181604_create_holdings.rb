class CreateHoldings < ActiveRecord::Migration[5.0]
  def change
    create_table :holding do |t|
      t.string :nombre_holding, :limit => 50, null:false
      t.string :display_holding, :limit => 50, null:false
      t.timestamps
    end
  end
end
