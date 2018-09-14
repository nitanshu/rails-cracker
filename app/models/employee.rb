class Employee < ApplicationRecord
  include MainConcern
  has_many :projects, -> {extending FindRecentExtension}, autosave: true, validate: true
  has_many :histories
  has_many :subordinates, class_name: "Employee",
           foreign_key: "manager_id"
  belongs_to :manager, class_name: 'Employee', optional: true
  has_many :pictures, as: :imageable
  accepts_nested_attributes_for :projects
end
