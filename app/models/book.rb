class Book < ApplicationRecord
  enum availability: [:available, :unavailable]
  belongs_to :author

end
