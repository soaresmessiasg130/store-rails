class DashboardController < ApplicationController

  def index
    @produtos = Produto.order(price: :desc)
    @produtos_escassos = Produto.order(:quantity).limit 4
  end

  def create
    produto = params.require(:produto).permit(:code, :name, :description, :price, :quantity)
    Produto.create produto
    redirect_to root_path
  end

end
