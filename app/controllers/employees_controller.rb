class EmployeesController < ApplicationController
  # before_action :santize_params, only: [:new, :create ]
  def index
    logger.info "-------------#{cookies.inspect}"

    @employee = Employee.first

    @employees = Employee.all
    @m=Employee.all
    @p=History.all
    redirect_to @employee
  end
  def custom
    @test = 'test'
  end
  def create
    @employee =  Employee.new(name: params[:employee][:name])
  end
def new
  @employee = Employee.new
  2.times { @employee.projects.build }
  render :show
end

  def show
@project = Project.first
  end
private
  def santize_params
    params.require(:employee).permit(:name, project_attributes: {})
  end
end
