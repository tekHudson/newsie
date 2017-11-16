module Users
  module ProductManipulator
    extend ActiveSupport::Concern

    def can_view_and_edit_products?
      true
    end

    def can_view_products?
      true
    end
  end
end
