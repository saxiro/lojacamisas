class Produto < ApplicationRecord

  belongs_to :departamento

  validates :quantidade, presence: true
  validates :nome, length: {minimum:5}
  validates :descricao, presence: true
  validates :preco, presence: true
end
