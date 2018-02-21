class Component < ApplicationRecord
  belongs_to :site
  has_many :subcomponent, :dependent => :destroy 
end
