class Subservice < ApplicationRecord
  belongs_to :type
  has_many :site, :dependent => :destroy
end
