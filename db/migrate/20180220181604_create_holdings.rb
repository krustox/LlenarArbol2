class CreateHoldings < ActiveRecord::Migration[5.0]
  def change
    create_table :holdings do |t|
      t.string :nombre_holding, :limit => 50, null:false, uniqueness:true
      t.string :display_holding, :limit => 50, null:false
      t.timestamps
    end
  end
end
