class Product < ApplicationRecord
  include Filterable

  scope :by_name,  -> (name) { where "name like ?", "%#{name}%"}
end
