class Service < ApplicationRecord
  belongs_to :channel
  has_many :type, :dependent => :destroy
end
