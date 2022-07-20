# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  let(:user) { create(:user) }
  let!(:post1) { create(:post, user: user) }

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

  describe 'for auth user' do
    before do
      sign_in user
    end
    describe 'GET /index' do
      context 'Showing all posts' do
        it 'show all posts' do
          get posts_url
          expect(response).to be_successful
          expect(response).to render_template('index')
        end
      end
    end

    describe 'POST /create' do
      context 'create a post if valid params' do
        it 'Successful Response' do
          expect do
            post posts_url, params: { post: new_params }
          end.to change(Post, :count).by(1)
        end
      end
      context 'do not create post if invalid params' do
        it 'Successful Response' do
          expect do
            post posts_url, params: { post: invalid_params }
          end.to change(Post, :count).by(0)
        end
      end
    end

    describe 'GET /edit' do
      context 'edit the post' do
        it 'Successful Response' do
          get edit_post_url(post1)
          expect(response).to be_successful
          expect(response).to render_template('edit')
        end
      end
      context 'if passed wrong post id, no post found' do
        it 'No post found' do
          get edit_post_url(98_685)
          expect(response).to have_http_status(:not_found)
        end
      end
    end

    describe 'PATCH /update' do
      context 'if valid params used, update the post' do
        it 'Successful Response' do
          patch post_url(post1), params: { post: new_params }
          post1.reload
          expect(response).to redirect_to(posts_url)
          expect(post1.content).to eq('This is RSpec testing')
        end
      end
      context 'if invalid param used, do not update post' do
        it 'post cannot be updated' do
          patch post_url(post1), params: { post: invalid_params }
          expect(response).to have_http_status(:unprocessable_entity)
        end
      end
    end

    describe 'DELETE /destroy' do
      context 'delete the post' do
        it 'Successful Response' do
          expect do
            delete post_url(post1)
          end.to change(Post, :count).by(-1)
          expect(Post.find_by(id: post1.id)).to be_nil
        end
      end
      context 'do not delete the post for invalid post id' do
        it 'Successful Response' do
          expect do
            delete post_url(98_685)
          end.to change(Post, :count).by(0)
        end
      end
    end
    after do
      sign_out user
    end
  end
  describe 'for non auth user' do
    describe 'GET /index' do
      context 'do not show any posts' do
        it 'Successful Response' do
          get posts_url
          expect(flash[:alert]).to match('You need to sign in or sign up before continuing.')
        end
      end
    end
    describe 'POST /create' do
      context 'cannot create post' do
        it 'Successful Response' do
          post posts_url, params: { post: new_params }
          expect(flash[:alert]).to match('You need to sign in or sign up before continuing.')
        end
      end
    end
    describe 'GET /edit' do
      context 'cannot edit the post' do
        it 'Successful Response' do
          get edit_post_url(post1)
          expect(flash[:alert]).to match('You need to sign in or sign up before continuing.')
        end
      end
    end
    describe 'PATCH /update' do
      context 'cannot update the post' do
        it 'Successful Response' do
          patch post_url(post1), params: { post: new_params }
          post1.reload
          expect(flash[:alert]).to match('You need to sign in or sign up before continuing.')
        end
      end
    end
    describe 'DELETE /destroy' do
      context 'cannot delete the post' do
        it 'Successful Response' do
          delete post_url(post1)
          expect(flash[:alert]).to match('You need to sign in or sign up before continuing.')
        end
      end
    end
  end
end
