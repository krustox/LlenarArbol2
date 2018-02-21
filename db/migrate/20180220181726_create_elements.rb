class CreateElements < ActiveRecord::Migration[5.0]
  def change
    create_table :elements do |t|
      t.integer :subcomponent_id, null: false
      t.string :nombre_elemento, :limit => 50, null:false, uniqueness:true
      t.string :display_elemento, :limit => 50, null:false

      t.timestamps
    end
  end
end
