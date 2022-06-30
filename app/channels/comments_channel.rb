# frozen_string_literal: true

class CommentsChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'comments_channel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  # def speak(data)
  #   ActionCable.server.broadcast 'comments_channel', body: data['body']
  # end
end
