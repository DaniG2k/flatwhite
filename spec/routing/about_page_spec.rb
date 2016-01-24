require 'rails_helper'

RSpec.describe PostsController, :type => :routing do
  it 'get posts#about is routable' do
    expect(:get => '/about').to route_to(
      :controller => 'posts',
      :action => 'about'
    )
  end
end
