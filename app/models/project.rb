class Project < ApplicationRecord
  has_many :pictures, as: :imageable
  belongs_to :employee, touch: true
end
