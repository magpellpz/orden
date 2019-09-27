class Equipo < ApplicationRecord
  belongs_to :marca, :class_name => "Marca", :foreign_key => "marca_id"
  belongs_to :modelo
  belongs_to :tipo_equipo
end
