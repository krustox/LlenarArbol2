class CreateSites < ActiveRecord::Migration[5.0]
  def change
    create_table :site do |t|
      t.integer :subservice_id, null: false
      t.string :nombre_site, :limit => 50, null:false
      t.string :display_site, :limit => 50, null:false

      t.timestamps
    end
  end
end
