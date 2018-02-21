class CreateAggrupations < ActiveRecord::Migration[5.0]
  def change
    create_table :aggrupations do |t|
      t.integer :type_id, null:false
      t.string :nombre_agrupacion, :limit => 50, null:false, uniqueness:true
      t.string :display_agrupacion, :limit => 50, null:false

      t.timestamps
    end
  end
end
