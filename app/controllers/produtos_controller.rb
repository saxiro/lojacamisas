class ProdutosController < ApplicationController

  def index
    @produtosPorNome =  Produto.order(:nome).limit 5
    @produtosPorPreco = Produto.order(:preco).limit(2)
    @liv = Livro.order :titulo
  end

end
