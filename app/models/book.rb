class Book < ApplicationRecord
  enum availability: %i[available unavailable]

  validates :title, presence: true
  validates :price, numericality: { greater_than: 0, only_integer: true}

  belongs_to :author, counter_cache: :count_of_books, touch: true
  belongs_to :supplier, optional: true

  has_many :chapters
  has_many :reviews
  has_and_belongs_to_many :orders, join_table: 'books_orders'

  scope :in_print, -> { where(out_of_print: false) }
  scope :out_of_print, -> { where(out_of_print: true) }
  scope :old, -> { where(year_published: ...50.years.ago.year) }
  scope :out_of_print_and_expensive, -> { out_of_print.where('price > 500') }
  scope :costs_more_than, ->(amount) { where('price > ?', amount) }
end
