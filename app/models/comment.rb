class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  # has_many :comments, :foreign_key => comment_id, :dependent => :destroy

  validates_length_of :description, :maximum => 100
end
