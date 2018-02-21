class Site < ApplicationRecord
  belongs_to :subservice
  has_many :component, :dependent => :destroy
end
