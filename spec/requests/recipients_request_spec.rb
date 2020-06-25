require 'rails_helper'

RSpec.describe "Recipients", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/recipients/index"
      expect(response).to have_http_status(:success)
    end
  end

end
