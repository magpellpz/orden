class Marca < ApplicationRecord
  has_many :equipos, :class_name => "Equipo", :foreign_key => "marca_id"
end
