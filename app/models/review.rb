class Review < ApplicationRecord
  enum :state, [:not_reviewed, :published, :hidden]

  belongs_to :customer
  belongs_to :book
  belongs_to :supplier, optional: true
end
