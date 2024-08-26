class ApplicationController < ActionController::Base
  protect_from_forgery

  before_action -> { puts "Calling before_action 1" }
  before_action -> { puts "Calling before_action 2" }

  around_action do |controller, block|
    puts "Calling around_action 1 - before yield"
    block.call
    puts "Calling around_action 1 - after yield"
  end
  around_action do |controller, block|
    puts "Calling around_action 2 - before yield"
    block.call
    puts "Calling around_action 2 - after yield"
  end

  after_action -> { puts "Calling after_action 1" }
  after_action -> { puts "Calling after_action 2" }

# Output
#   Calling before_action 1
# Calling before_action 2
# Calling around_action 1 - before yield
# Calling around_action 2 - before yield
# Executing action
# Calling after_action 2
# Calling after_action 1
# Calling around_action 2 - after yield
# Calling around_action 1 - after yield

  # USERS = { "lifo" => "world" }
  #
  # before_action :authenticate
  #
  # private
  #
  # def authenticate
  #   authenticate_or_request_with_http_digest do |username|
  #     USERS[username]
  #   end
  # end
end
