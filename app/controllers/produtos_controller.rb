class ProdutosController < ApplicationController


  def new
    @produto = Produto.new
    @departamentos = Departamento.all
  end

  def index
    @produtosPorNome =  Produto.order(:nome).limit 15
    @produtosPorPreco = Produto.order(:preco).limit(2)
    @produtosTodos = Produto.order(:id)
    @liv = Livro.order :titulo
  end
  def edit
    id = params[:id]
    @produto = Produto.find(id)
    @departamentos = Departamento.all
    render :new
  end
  def busca
    @nomeABuscar = params[:nome]
    @produtos = Produto.where "nome like ?", "%#{@nomeABuscar}%"
  end

  def create
    valores = params.require(:produto).permit :nome, :descricao, :quantidade, :preco, :departamento_id # Pega o params faz uma requisição do produtos e permite todos
    @produto = Produto.new valores
    respond_to do |format|
      if @produto.save
        flash[:notice] = "Camisa cadastrada com sucesso!"
        format.html { redirect_to root_url }
      else
      format.html { render :new }
      end
    end
  end

  def destroy
    id = params[:id]
    Produto.destroy id
    redirect_to root_url
  end


end
