  class ProjectsController < ApplicationController
  def index
    @project = Project.first
    # render json: @project
    # render plain: 'OK'
    # render action: :create
    # render html: helpers.tag.strong('Not Found 404')
    # render xml: @project
    # render js: "alert('Hello Rails');"
    # render body: 'raw'
    redirect_to projects_custom2_path
  end

def custom2
  @custom = 'custome'
end

  def create
    @crain = ' I am crain '
  end

  def update
  end

  def show
  end
end
