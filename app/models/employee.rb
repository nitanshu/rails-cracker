class Employee < ApplicationRecord
  has_many :projects
  has_many :histories
end
