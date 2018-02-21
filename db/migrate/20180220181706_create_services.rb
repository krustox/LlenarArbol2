class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :service do |t|
      t.integer :channel_id, null:false
      t.string :nombre_servicio, :limit => 50, null:false
      t.string :display_servicio, :limit => 50, null:false

      t.timestamps
    end
  end
end
