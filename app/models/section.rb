class Section < ApplicationRecord
  has_many :paragraphs
  belongs_to :document, autosave: true, touch: true
end
