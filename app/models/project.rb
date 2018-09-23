class Project < ApplicationRecord
  enum availability: [:available, :unavailable]
  has_many :pictures, as: :imageable
  validates :name, presence: true
  belongs_to :employee, touch: true, optional: true
  serialize :properties, JSON
end
