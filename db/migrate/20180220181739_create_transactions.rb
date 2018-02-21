class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.integer :product_id, null: false
      t.string :nombre_transaccion, :limit => 50, null:false
      t.string :display_transaccion, :limit => 50, null:false

      t.timestamps
    end
  end
end
