class Post < ApplicationRecord
  STATUS = ['Draft','Publised','Archived']

  belongs_to :user
  has_many :comments
  # has_many :comments, dependent: destroy

  validates_length_of :title, :maximum => 50
  validates_length_of :body, :maximum => 200
  validates_inclusion_of :status, in: STATUS

  scope :user_status, -> { where(status: ['Draft','Publised']) }
end
