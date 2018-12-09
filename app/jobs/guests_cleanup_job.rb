class GuestsCleanupJob < ApplicationJob
  queue_as :default

  def perform(*args)
puts "-----------------------"
  end
end
