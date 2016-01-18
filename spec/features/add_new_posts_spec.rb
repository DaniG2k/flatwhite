require 'rails_helper'

RSpec.feature "AddNewPosts", type: :feature do
  it 'should require the user log in before adding a post' do
    login_as create( :user ), scope: :user
    
    visit new_post_path

    within "#new_post" do
      fill_in "post_title", with: "Post title"
      fill_in "post_body", with: "This is the blog entry's body"
    end

    click_link_or_button "Create Post"

    expect(Post.count).to eq(1)
    expect(Post.first.name).to eq("Post title")
  end
end
