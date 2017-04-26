class ProductsController < ApplicationController

  def index
    @products = Product.filter(params.slice(:by_name))

    respond_to do |format|
      format.html
      format.json do
        render json: @products
      end
    end
  end

end
