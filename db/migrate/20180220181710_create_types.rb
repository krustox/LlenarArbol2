class CreateTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :type do |t|
      t.integer :service_id, null: false
      t.string :nombre_tipo, :limit => 50, null:false
      t.string :display_tipo, :limit => 50, null:false

      t.timestamps
    end
  end
end
