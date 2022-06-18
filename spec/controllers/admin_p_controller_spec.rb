require 'rails_helper'

RSpec.describe AdminPController, :type => :controller do

  describe "GET #adminP" do
    it "returns http success" do
      get :adminP
      expect(response).to have_http_status(:success)
    end
  end

end
