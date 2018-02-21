class Foreignkey < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :enterprises, :holdings
    add_foreign_key :channels, :enterprises
    add_foreign_key :services, :channels
    add_foreign_key :types, :services
    add_foreign_key :subservices, :types
    add_foreign_key :sites, :subservices
    add_foreign_key :components, :sites
    add_foreign_key :subcomponents, :components
    add_foreign_key :elements, :subcomponents
    add_foreign_key :aggrupations, :types
    add_foreign_key :segments, :aggrupations
    add_foreign_key :products, :segments
    add_foreign_key :transactions, :products
    add_foreign_key :operations, :transactions
    end
end
