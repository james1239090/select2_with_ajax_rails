# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
Dimension.destroy_all
Color.destroy_all
ProductOption.destroy_all

Color.create(name: 'Red')
Color.create(name: 'Blue')
Color.create(name: 'Black')

Dimension.create(name: 'M')
Dimension.create(name: 'L')
Dimension.create(name: 'XL')

create_products = for i in 1..50 do
    Product.create!([name: "Product no.#{i}"])
    ProductOption.create(product_id: i, dimension_id: 1, color_id: 1)
    ProductOption.create(product_id: i, dimension_id: 2, color_id: 1)
    ProductOption.create(product_id: i, dimension_id: 3, color_id: 1)
    ProductOption.create(product_id: i, dimension_id: 1, color_id: 2)
    ProductOption.create(product_id: i, dimension_id: 2, color_id: 2)
    ProductOption.create(product_id: i, dimension_id: 3, color_id: 2)
    ProductOption.create(product_id: i, dimension_id: 1, color_id: 3)
    ProductOption.create(product_id: i, dimension_id: 2, color_id: 3)
    ProductOption.create(product_id: i, dimension_id: 3, color_id: 3)

  end
