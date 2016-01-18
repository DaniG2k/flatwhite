require 'rails_helper'

RSpec.describe PostsController, :type => :controller do
  describe "anonymous user" do
    before :each do
      login_with nil
    end

    it "should let any user see all the posts" do
      get :index
      expect(response).to render_template(:index)
    end

    it "should let an authenticated user see all the posts" do
      login_with :user
      get :index
      expect(response).to render_template(:index)
    end
  end
end
