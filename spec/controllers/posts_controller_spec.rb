require 'rails_helper'

RSpec.describe PostsController, :type => :controller do
  describe 'finding posts' do
    it 'handles a missing project correctly' do
      get :show, id: 'not-here'

      expect(response).to redirect_to(posts_path)
      
      message = 'The post you were looking for could not be found.'
      expect(flash[:alert]).to eq message
    end
  end
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
