class ProductsController < ApplicationController
  def index
    @categories = Category.all
    @category = Category.find(params[:category_id]) if params[:category_id].present?

    @products = Product.for_category(params[:category_id])
    @product = Product.find(params[:product_id]) if params[:product_id].present?
  end
end
