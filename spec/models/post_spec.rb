require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'create' do
    before do
      @valid_post = Post.new title: 'so', body: 'somebody'
      @invalid_post = Post.new title: '', body: ''
    end

    it 'should create valid post' do
      expect(@valid_post).to be_valid
    end

    it 'should not valid' do
      expect(@invalid_post).not_to be_valid
    end
  end
end
