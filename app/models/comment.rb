class Comment < ApplicationRecord

  belongs_to :post
  belongs_to :user
  # has_many :comments, :foreign_key => comment_id, :dependent => :destroy

  validates_length_of :description, :maximum => 100

  validate :validate_bad_words

  include VerifyWord

  def validate_bad_words
    if check_for_bad_words(self.description)
      errors.add(:base, "Body Contains Bad Words")
    end
  end
end
