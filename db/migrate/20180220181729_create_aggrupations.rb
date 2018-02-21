class CreateAggrupations < ActiveRecord::Migration[5.0]
  def change
    create_table :aggrupation do |t|
      t.integer :type_id, null:false
      t.string :nombre_agrupacion, :limit => 50, null:false
      t.string :display_agrupacion, :limit => 50, null:false

      t.timestamps
    end
  end
end
