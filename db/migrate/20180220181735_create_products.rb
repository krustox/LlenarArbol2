class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :segment_id, null: false
      t.string :nombre_producto, :limit => 50, null:false, uniqueness:true
      t.string :display_producto, :limit => 50, null:false

      t.timestamps
    end
  end
end
