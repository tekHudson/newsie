class Product < ApplicationRecord
  belongs_to :category
  has_one :image

  def self.for_category(category_id)
    if category_id.present?
      where(category_id: category_id)
    else
      all
    end
  end
end
