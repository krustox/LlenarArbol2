class CreateTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :types do |t|
      t.integer :service_id, null: false
      t.string :nombre_tipo, :limit => 50, null:false, uniqueness:true
      t.string :display_tipo, :limit => 50, null:false

      t.timestamps
    end
  end
end
