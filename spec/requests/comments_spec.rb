# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Comments', type: :request do
  let(:user) { create(:user) }
  let(:post) { create(:post, user: user) }
  let(:comment) { create(:comment, user: user, post: post) }
  let(:comment_params) do
    {
      content: 'this is a comment'
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

  describe 'POST /create' do
    context 'create a comment' do
      let(:comment1) { create(:comment, user: user, post: post, content: 'creating a comment') }
      it 'Successful Response' do
        expect(Comment.find_by(id: comment1.id)).to_not be_nil
      end
    end
  end

  describe 'GET /edit' do
    context 'edit the comment' do
      it 'Successful Response' do
        get edit_comment_url(comment)
        expect(response).to be_successful
      end
    end
  end

  describe 'PATCH /update' do
    context 'update the post' do
      it 'Successful Response' do
        patch comment_url(comment), params: { comment: comment_params }
        expect(response).to redirect_to(posts_url)
      end
    end
    context ' do not update the post for invalid params' do
      it 'Successful Response' do
        patch comment_url(comment), params: { comment: invalid_params }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'DELETE /destroy' do
    context 'delete the comment' do
      it 'Successful Response' do
        delete comment_url(comment), xhr: true
        expect(Comment.find_by(id: comment.id)).to be_nil
      end
    end
  end
end
