class ProductOption < ApplicationRecord
  include Filterable
  belongs_to :product, optional: true
  belongs_to :dimension
  belongs_to :color

  scope :product_id,  -> (id) { where( :product_id => "#{id}" )}
  scope :color_id,  -> (id) { where( :color_id => "#{id}" )}
  scope :group_id,-> (id) { group("#{id}")}
end
