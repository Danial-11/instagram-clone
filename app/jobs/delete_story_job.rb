# frozen_string_literal: true

# delete stories job
class DeleteStoryJob < ApplicationJob
  queue_as :default

  def perform(*_args)
    Story.where('created_at <= ?', 10.seconds.ago).destroy_all
  end
end
