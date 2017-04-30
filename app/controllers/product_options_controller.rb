class ProductOptionsController < ApplicationController
  def index
    @options = ProductOption.where(product_id: params[:product_id]).group(:dimension_id)
    respond_to do |format|
      format.json do
        render json: @options,:only => :dimension_id,:include => {:dimension => {:only => :name}}
      end
    end
  end

end
