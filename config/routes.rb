Rails.application.routes.draw do
  resources :departamentos
  resources :produtos, only: [:new, :create, :destroy, :index, :edit]
  get "/produtos/busca" => "produtos#busca", as: :busca_produto
  root "produtos#index"
end
