class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params[:product])

    respond_to do |format|
      if @product.save
        # format.html { redirect_to(@product, :notice => 'Product was successfully created.') }
        format.html { redirect_to(root_path, :notice => 'Product was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end
end
