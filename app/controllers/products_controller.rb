class ProductsController < ApplicationController
  def index
    render json: Product.all()
  end

  def select
    @prod = Product.find(params[:id])
    render json: @prod
  end

  def create
    @prod = Product.new(product_params)
    if @prod.save
      render json: @prod, status: :created
    else
      render json: @prod.errors, status: :unprocessable_entity
    end
  end

  def delete
    @prod = Product.find(params[:id])
    if @prod.destroy
      render json: @prod
    else
      render json: @prod.errors
    end
  end

  def edit
    @prod = Product.find(params[:id])
    if @prod.update(product_params)
      render json: @prod
    else
      render json: @prod.errors
    end

  end

  def product_params
    params.require(:product).permit(:name, :classification, :description, :environment)
  end
end
