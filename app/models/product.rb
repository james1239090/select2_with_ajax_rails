class Product < ApplicationRecord
  include Filterable
  has_many :product_options
  has_many :dimensions, :through => :product_options, source: :dimension
  has_many :colors, :through => :product_options, source: :color
  scope :by_name,  -> (name) { where "name like ?", "%#{name}%"}
end
