class Segment < ApplicationRecord
  belongs_to :aggrupation
  has_many :product, :dependent => :destroy
end
