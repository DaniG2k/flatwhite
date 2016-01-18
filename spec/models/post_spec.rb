require 'rails_helper'

RSpec.describe Post, :type => :model do
  describe 'validations' do
    before :all do
      @post1 = Post.create(
        :title => 'Some interesting title',
        :body => 'Some interesting body',
      )
      @post2 = @post1.dup
    end
    after :all do
      expect(@post2).not_to be_valid
    end

    it 'requires a title' do
      @post2.title = ''
    end
    it 'requires a unique title' do
      @post2.title = @post1.title
    end
    it 'requires a body' do
      @post2.body = ''
    end
  end
end
