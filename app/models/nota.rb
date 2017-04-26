class Nota
  include Mongoid::Document
  field :titulo, type: String
  field :nota, type: String
  field :primeira_visualizacao, type: DateTime
  field :numero_visualizacao, type: Integer
  field :is_publica, type: Boolean
  field :status, type: String
end
