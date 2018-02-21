class CreateChannels < ActiveRecord::Migration[5.0]
  def change
    create_table :channels do |t|
      t.integer :enterprise_id, null:false
      t.string :nombre_canal, :limit => 50, null:false, uniqueness:true
      t.string :display_canal, :limit => 50, null:false

      t.timestamps
    end
  end
end
