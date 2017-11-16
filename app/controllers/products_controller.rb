class ProductsController < ApplicationController
  def index
    @categories = Category.all
    @products = Product.all
    @category = Category.find(params[:category_id]) if params[:category_id].present?
  end
end
