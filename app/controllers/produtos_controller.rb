class ProdutosController < ApplicationController

  def index
    @produtosPorNome =  Produto.order(:nome).limit 15
    @produtosPorPreco = Produto.order(:preco).limit(2)
    @liv = Livro.order :titulo
  end

  def create
    valores = params.require(:produto).permit :nome, :descricao, :quantidade, :preco # Pega o params faz uma requisição do produtos e permite todos
    produto = Produto.create valores

  end

end
