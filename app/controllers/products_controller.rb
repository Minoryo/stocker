class ProductsController < ApplicationController
  def index
  end

  def show
  end

  #new.html.erbを表示
  def new
    @product = Product.new
  end

  #商品を登録するメソッド
  def regist
    render :html => "商品名 = #{params[:product][:name]}"
  end
end
