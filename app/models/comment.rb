class Comment < ApplicationRecord
  belongs_to :article, optional: true
  has_one :guest
  belongs_to :post
  belongs_to :parent, class_name: 'Comment', optional: true
  has_many :replies, class_name: 'Comment', foreign_key: 'parent_id', dependent: :destroy
end
