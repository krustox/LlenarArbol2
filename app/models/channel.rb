class Channel < ApplicationRecord
  belongs_to :enterprise
  has_many :service, :dependent => :destroy

  before_create :nombre

  def nombre
    self.enterprise_id = self.enterprise_id.to_i
    self.nombre_canal = self.display_canal.strip.upcase.gsub ' ','_'
  end

validates :display_canal, presence:true, length: {in: 1..50}

end
