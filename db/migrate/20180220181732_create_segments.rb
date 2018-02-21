class CreateSegments < ActiveRecord::Migration[5.0]
  def change
    create_table :segments do |t|
      t.integer :aggrupation_id, null: false
      t.string :nombre_segmento, :limit => 50, null:false, uniqueness:true
      t.string :display_segmento, :limit => 50, null:false

      t.timestamps
    end
  end
end
