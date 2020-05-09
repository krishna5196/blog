class Post < ApplicationRecord
  STATUS = ['Draft','Published','Archieved']

  belongs_to :user
  has_many :comments
  # has_many :comments, dependent: destroy

  validates_length_of :title, :maximum => 50
  validates_length_of :body, :maximum => 200
  validates_inclusion_of :status, in: STATUS


  scope :user_status, -> { where(status: ['Draft','Published']) }
  validate :validate_bad_words

  include VerifyWord

  def validate_bad_words
    if check_for_bad_words(self.body)
      self.errors.add(:base, "Body Contains Bad Words")
    end
  end
end
