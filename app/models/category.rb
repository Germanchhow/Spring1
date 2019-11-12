class Category < ApplicationRecord
    validates :name, presence: true, uniqueness: true

    has_many :products

    scope :with_name, ->(name) { where('name LIKE ?', "%#{name}%") }

end
