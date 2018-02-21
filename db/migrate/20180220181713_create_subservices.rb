class CreateSubservices < ActiveRecord::Migration[5.0]
  def change
    create_table :subservices do |t|
      t.integer :type_id, null: false
      t.string :nombre_subservicio, :limit => 50, null:false, uniqueness:true
      t.string :display_subservicio, :limit => 50, null:false

      t.timestamps
    end
  end
end
