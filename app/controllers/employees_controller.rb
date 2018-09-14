class EmployeesController < ApplicationController
  # include ActionController::Live

  USERS = { "lifo" => "world" }

  before_action :authenticate

  private

  def authenticate
    authenticate_or_request_with_http_digest do |username|
      USERS[username]
    end
  end

  def index
    @employees = Employee.all

    flash.now[:error] = 'Play it now '


    #
    #   response.headers['Content-Type'] = 'text/event-stream'
    #   100.times {
    #     response.stream.write "hello world\n"
    #     sleep 1
    #   }
    # ensure
    #   response.stream.close

  end
end
