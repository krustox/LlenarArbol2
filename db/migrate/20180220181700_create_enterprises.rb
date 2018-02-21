class CreateEnterprises < ActiveRecord::Migration[5.0]
  def change
    create_table :enterprise do |t|
      t.integer :holding_id, null:false
      t.string :nombre_empresa, :limit => 50, null:false
      t.string :display_empresa, :limit => 50, null:false

      t.timestamps
    end
  end
end
