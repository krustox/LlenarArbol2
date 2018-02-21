class Channel < ApplicationRecord
  belongs_to :enterprise
  has_many :service, :dependent => :destroy
end
