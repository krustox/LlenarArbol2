class Product < ApplicationRecord
  belongs_to :segment
  has_many :transaction, :dependent => :destroy
end
