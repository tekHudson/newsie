class ProductsController < ApplicationController
  def index
    @categories = Category.all
    @product = Product.find(params[:product_id]) if params[:product_id].present?

    @category = Category.find_by(id: params[:category_id])
    @products = Product.for_category(params[:category_id])

    # TODO: Add ability to refine products show for ease of use
    # if @products.length > 10
    #   @products_by_alpha = {}
    #   (0...36).map{ |i| i.to_s(36).upcase}.each do |k|
    #     @products_by_alpha[k] = []
    #     @products_by_alpha[k] << @products.to_a.keep_if { |e| e.name[0] == k }
    #   end
    # end
  end
end
