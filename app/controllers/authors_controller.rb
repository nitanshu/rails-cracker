class AuthorsController < ApplicationController
  USERS = { "lifo" => "world" }

  # before_action :authenticate
def index
  flash[:notice] ='tattisdf'
  # redirect_to new_author_path
  # render plain: 'eeeeeeeeeeeee'
  # render :new
end

  def new
    @author = Author.new
    # render plain: 'new'
  end
  private

  def authenticate
    authenticate_or_request_with_http_digest do |username|
      USERS[username]
    end
  end
end
