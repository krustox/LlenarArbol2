class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.integer :channel_id, null:false
      t.string :nombre_servicio, :limit => 50, null:false, uniqueness:true
      t.string :display_servicio, :limit => 50, null:false

      t.timestamps
    end
  end
end
