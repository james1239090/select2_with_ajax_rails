class ProductOptionsController < ApplicationController
  def index
    @options = ProductOption.filter(params.slice(:p_id,:c_id,:g_id))
    respond_to do |format|
      format.json do
        render json: @options,:only => [:dimension_id,:color_id],
          :include => {:dimension => {:only => :name},
                       :color =>{:only=> :name}}
      end
    end
  end

end
