class Type < ApplicationRecord
  belongs_to :service
  has_many :subservice, :dependent => :destroy
  has_many :aggrupation, :dependent => :destroy
end
