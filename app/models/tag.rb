class Tag < ApplicationRecord
  validates :name, presence: true, uniqueness: true  
  has_and_belongs_to_many :products
  
  scope :with_name, ->(name) { where('name LIKE ?', "%#{name}%") }

end
