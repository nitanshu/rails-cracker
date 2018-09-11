class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
    @m=Employee.all
    @p=History.all
  end
end
