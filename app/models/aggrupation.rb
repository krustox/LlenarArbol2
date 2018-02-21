class Aggrupation < ApplicationRecord
  belongs_to :type
  has_many :segment, :dependent => :destroy
end
