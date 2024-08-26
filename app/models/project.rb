# frozen_string_literal: true

# :nodoc:
class Project < ApplicationRecord
  enum availability: %i[available unavailable]

  has_many :pictures, as: :imageable

  validates :name, presence: true

  belongs_to :employee, touch: true
  # serialize :properties, JSON
end
