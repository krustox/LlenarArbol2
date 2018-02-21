class CreateComponents < ActiveRecord::Migration[5.0]
  def change
    create_table :component do |t|
      t.integer :site_id, null: false
      t.string :nombre_componente, :limit => 50, null:false
      t.string :display_componente, :limit => 50, null:false

      t.timestamps
    end
  end
end
