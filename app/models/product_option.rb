class ProductOption < ApplicationRecord
  belongs_to :product, optional: true
  belongs_to :dimension
  belongs_to :color
end
