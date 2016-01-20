require 'rails_helper'

RSpec.describe Post, :type => :model do
  describe 'validations' do
    before :each do
      @post1 = FactoryGirl.create :post
      @post2 = FactoryGirl.create :post
    end

    it 'requires a title' do
      @post2.title = ''
      expect(@post2).not_to be_valid
    end
    it 'requires a unique title' do
      @post2.title = @post1.title
      expect(@post2).not_to be_valid
    end
    it 'requires a body' do
      @post2.body = ''
      expect(@post2).not_to be_valid
    end
  end
end
