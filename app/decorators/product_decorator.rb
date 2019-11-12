class ProductDecorator < ApplicationDecorator
  delegate_all

  def pretty_date
    h.time_ago_in_words(object.created_at)
  end

  def category_name
    object.category ? object.category.name : '-'
  end

  def tags_name
    object.tags.pluck(:name).map{|t| h.print_badge(t)}.join().html_safe
  end
end
