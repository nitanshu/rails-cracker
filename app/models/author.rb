class Author < ApplicationRecord
  has_many :books, -> { order(year_published: :desc) }
  has_one_attached :avatar

  scope :specific_name, ->(name) { where(name:) }
end
