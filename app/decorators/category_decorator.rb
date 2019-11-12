class CategoryDecorator < ApplicationDecorator
  delegate_all

  def products_count
    @products_count ||= products.count
    @products_count.zero? ? '-' : @products_count
  end
end
