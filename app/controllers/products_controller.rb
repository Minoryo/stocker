class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
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

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      flash[:success] = "更新しました。"
      redirect_to @product
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to @product
  end

  private

    def product_params
      params.require(:product).permit(:name, :price, :quantity)
    end
end
