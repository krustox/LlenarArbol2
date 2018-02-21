class Foreignkey < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :enterprise, :holding
    add_foreign_key :channel, :enterprise
    add_foreign_key :service, :channel
    add_foreign_key :type, :service
    add_foreign_key :subservice, :type
    add_foreign_key :site, :subservice
    add_foreign_key :component, :site
    add_foreign_key :subcomponent, :component
    add_foreign_key :element, :subcomponent
    add_foreign_key :aggrupation, :type
    add_foreign_key :segment, :aggrupation
    add_foreign_key :product, :segment
    add_foreign_key :transaction, :product
    add_foreign_key :operation, :transaction
    end
end
