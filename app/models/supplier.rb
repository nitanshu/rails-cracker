class Supplier < ApplicationRecord
  has_many :books
  has_many :authors, through: :books
  has_many :reviews
end
