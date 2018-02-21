class Enterprise < ApplicationRecord
  belongs_to :holding
  has_many :channel, :dependent => :destroy

  before_create :nombre

  def nombre
    self.holding_id = self.holding_id.to_i
    self.nombre_empresa = self.display_empresa.strip.upcase.gsub ' ','_'
  end

validates :display_empresa, presence:true, length: {in: 4..50}
end
