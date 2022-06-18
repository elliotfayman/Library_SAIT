require 'rails_helper'

RSpec.describe MainController, :type => :controller do

  describe "GET #bookList" do
    it "returns http success" do
      get :bookList
      expect(response).to have_http_status(:success)
    end
  end

end
