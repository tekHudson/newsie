class Category < ApplicationRecord
  has_many :products

  def self.for_category(category_id)
    if category_id.present?
      where(category_id: category_id)
    else
      all
    end
  end
end
