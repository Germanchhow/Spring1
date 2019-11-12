class Product < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :prod_id, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { default: 0.0}
  validates :cost, presence: true, numericality: { default: 0.0}
  validates :active, presence: true

  belongs_to :category
  has_and_belongs_to_many :tags

  scope :with_title, ->(title) { where('title LIKE ?', "%#{title}%") }
  scope :with_category, ->(category_id) { where('category_id = ?', category_id) }

end
