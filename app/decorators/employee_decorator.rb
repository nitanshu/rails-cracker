class EmployeeDecorator < Draper::Decorator
  delegate_all

  def modified_name
    "#{object.class.name} #{object.name}"
  end
end