require "rails_helper"

RSpec.describe DescriptionsController do
  describe "GET index" do
    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end

    it "assigns @descriptions" do
      descriptions = Description.get_descriptions
      get :index
      expect(assigns(:descriptions)).to eq descriptions
    end
  end
end
