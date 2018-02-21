class Transaction < ApplicationRecord
  belongs_to :product
  has_many :operation, :dependent => :destroy
end
