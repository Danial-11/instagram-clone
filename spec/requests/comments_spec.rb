# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Comments', type: :request do
  let(:user) { create(:user) }
  let!(:post1) { create(:post, user: user) }
  let!(:comment) { create(:comment, user: user, post: post1) }
  let!(:comment_params) do
    {
      content: 'this is a comment',
      post_id: post1.id,
      user_id: user.id
    }
  end
  let(:invalid_params) do
    {
      content: '',
      post_id: post1.id
    }
  end
  describe 'for auth user' do
    before do
      sign_in user
    end

    describe 'POST /create' do
      context 'create a comment' do
        it 'Successful Respons  e' do
          expect do
            post post_comments_url(post1), params: { comment: comment_params }, xhr: true
          end.to change(Comment, :count).by(1)
        end
      end
      context 'do not create comment in case of invalid params' do
        it 'Successful Response' do
          expect do
            post post_comments_url(post1), params: { comment: invalid_params }, xhr: true
          end.to change(Comment, :count).by(0)
        end
      end
    end

    describe 'GET /edit' do
      context 'edit the comment' do
        it 'Successful Response' do
          get edit_comment_url(comment)
          expect(response).to be_successful
          expect(response).to render_template('edit')
        end
      end
    end

    describe 'PATCH /update' do
      context 'update the post' do
        it 'Successful Response' do
          patch comment_url(comment), params: { comment: comment_params }
          comment.reload
          expect(response).to redirect_to(posts_url)
          expect(comment.content).to eq('this is a comment')
        end
      end
      context 'do not update the post for invalid params' do
        it 'Successful Response' do
          patch comment_url(comment), params: { comment: invalid_params }
          expect(response).to have_http_status(:unprocessable_entity)
        end
      end
    end

    describe 'DELETE /destroy' do
      context 'delete the comment' do
        it 'Successful Response' do
          expect do
            delete comment_url(comment), xhr: true
          end.to change(Comment, :count).by(-1)
        end
      end
    end
    after do
      sign_out user
    end
  end
  describe 'for unauth user' do
    describe 'POST /create' do
      context 'cannot create the comment' do
        it 'Successful Response' do
          post post_comments_url(post1), params: { comment: comment_params }
          expect(flash[:alert]).to match('You need to sign in or sign up before continuing.')
        end
      end
    end
    describe 'GET /edit' do
      context 'cannot edit the comment' do
        it 'Successful Response' do
          get edit_comment_url(comment)
          expect(flash[:alert]).to match('You need to sign in or sign up before continuing.')
        end
      end
    end

    describe 'PATCH /update' do
      context 'cannot update the post' do
        it 'Successful Response' do
          patch comment_url(comment), params: { comment: comment_params }
          comment.reload
          expect(flash[:alert]).to match('You need to sign in or sign up before continuing.')
        end
      end
    end

    describe 'DELETE /destroy' do
      context 'cannot delete the comment' do
        it 'Successful Response' do
          delete comment_url(comment)
          expect(flash[:alert]).to match('You need to sign in or sign up before continuing.')
        end
      end
    end
  end
end
