class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :product do |t|
      t.integer :segment_id, null: false
      t.string :nombre_producto, :limit => 50, null:false
      t.string :display_producto, :limit => 50, null:false

      t.timestamps
    end
  end
end
