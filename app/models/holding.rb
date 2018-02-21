class Holding < ApplicationRecord
  has_many :enterprise, :dependent => :destroy
  before_create :nombre

  def nombre
    self.nombre_holding = self.display_holding.strip.upcase.gsub ' ','_'
    self.display_holding = self.display_holding.strip
  end

  #validates :display_holding, presence:true, length: {minimum: 4}
  #validates :display_holding, presence:true, length: {is: 4}
  #validates :display_holding, presence:true, length: {maximum: 4, too_long: "%{count} caracteres es el maximo permitido"}
  validates :display_holding, presence:true, length: {in: 4..50}
end
