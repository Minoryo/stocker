class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
  end

  #new.html.erbを表示
  def new
    @product = Product.new
  end

  #商品を登録するメソッド
  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:success] = "商品登録に成功しました"
      redirect_to @product
    else
      render 'new'
    end
  end

  private

    def product_params
      params.require(:product).permit(:name, :price, :quantity)
    end
end
