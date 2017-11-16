module ProductsHelper
  def new_product_with_category_path
    if @category
      new_product_path(category_id: @category.id)
    else
      new_product_path
    end
  end
end
