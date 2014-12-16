class DescriptionsController < ApplicationController
  def index
    @descriptions = Description.get_descriptions
    render json: @descriptions
  end
end
