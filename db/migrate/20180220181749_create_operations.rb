class CreateOperations < ActiveRecord::Migration[5.0]
  def change
    create_table :operations do |t|
      t.integer :transaction_id, null: false
      t.string :nombre_operacion, :limit => 50, null:false
      t.string :display_operacion, :limit => 50, null:false

      t.timestamps
    end
  end
end
