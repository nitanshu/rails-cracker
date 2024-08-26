class Chapter < ApplicationRecord
  belongs_to :book, -> { includes :author }
end
