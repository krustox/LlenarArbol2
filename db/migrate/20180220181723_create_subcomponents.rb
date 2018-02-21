class CreateSubcomponents < ActiveRecord::Migration[5.0]
  def change
    create_table :subcomponents do |t|
      t.integer :component_id, null: false
      t.string :nombre_subcomponente, :limit => 50, null:false, uniqueness:true
      t.string :display_subcomponente, :limit => 50, null:false

      t.timestamps
    end
  end
end
