class Admin::ProductsController < ApplicationController
  before_action :logged_in_user
  before_action :set_product, only: [:edit, :show, :update, :destroy]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(product_params)
    if @product.save 
      flash[:success] = 'Product was successfully created'
      redirect_to [:admin, @product]
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @product.update(product_params)
      flash[:success] = 'Product was successfully updated.'
      redirect_to admin_product_path
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    flash[:success] = 'Product was successfully deleted'
    redirect_to admin_root_path
  end

  private

  def set_product
      @product = Product.find(params[:id])
  end

  def product_params
      params.require(:product).permit(:name, :description, :price, :stock, :image_url)
  end
end