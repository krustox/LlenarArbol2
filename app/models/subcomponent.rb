class Subcomponent < ApplicationRecord
  belongs_to :component
  has_many :element, :dependent => :destroy
end
