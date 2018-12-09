class EmployeesController < ApplicationController
  # before_action :santize_params
  def index
    @employees = Employee.all
    @p=History.all
    if stale?(@employees)
      respond_to do |format|
        format.html
      end
    end


    # logger.info " =========#{session[:_csrf_token].inspect} "
  end
  def custom
    @test = 'test'
  end
  def create
    @employee =  Employee.new(name: params[:employee][:name])
  end
def new
  # logger.info "----------------#{cookies.inspect}"
  @employee = Employee.new(santize_params)
  2.times { @employee.projects.build }
end

  def show
@employee = Employee.where(id: params[:id]).take
# fresh_when etag: @employee
  end
private
  def santize_params
    params.fetch(:employee, {}).permit(:name, project_attributes: {})
  end
  def fetch_employee
    @employee= Employee.find 1
  end
end
