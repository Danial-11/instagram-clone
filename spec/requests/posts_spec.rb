# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  let(:user) { create(:user) }
  let(:post) { create(:post, user: user) }
  let(:new_params) do
    {
      content: 'This is RSpec testing'
    }
  end
  let(:invalid_params) do
    {
      content: ''
    }
  end

  before do
    sign_in user
  end
  describe 'GET /index' do
    context 'Showing all posts' do
      it 'show all posts' do
        get posts_url
        expect(response).to be_successful
      end
    end
  end

  describe 'POST /create' do
    context 'create a post if valid params' do
      let(:post1) { create(:post, user: user, content: 'creating a post') }
      it 'Successful Response' do
        expect(Post.find_by(id: post1.id)).to_not be_nil
      end
    end
  end

  describe 'GET /edit' do
    context 'edit the post' do
      it 'Successful Response' do
        get edit_post_url(post)
        expect(response).to be_successful
      end
    end
    context 'if passed wrong post id, no post found' do
      it 'No post found' do
        get edit_post_url(98_685)
        expect(Post.find_by(id: 98_685)).to be_nil
      end
    end
  end

  describe 'PATCH /update' do
    context 'if valid params used, update the post' do
      it 'Successful Response' do
        patch post_url(post), params: { post: new_params }
        expect(response).to redirect_to(posts_url)
      end
    end
    context 'if invalid param used, do not update post' do
      it 'post cannot be updated' do
        patch post_url(post), params: { post: invalid_params }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'DELETE /destroy' do
    context 'delete the post' do
      it 'Successful Response' do
        delete post_url(post)
        expect(Post.find_by(id: post.id)).to be_nil
      end
    end
    context 'do not delete the post for invalid post id' do
      it 'Successful Response' do
        delete post_url(98_685)
        expect(Post.find_by(id: 98_685)).to be_nil
      end
    end
  end
end
