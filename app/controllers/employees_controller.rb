class EmployeesController < ApplicationController
  # before_action :santize_params
  # before_action :fetch_employee, only: [:new]

  def index
    @employees = Employee.all.decorate
    @m=Employee.all
    @p=History.all
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
end

  def show

  end
private
  def santize_params
    params.require(:employee).permit(:name, project_attributes: {})
  end
  def fetch_employee
    @employee= Employee.find 1
  end
end
