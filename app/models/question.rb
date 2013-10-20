class Question < ActiveRecord::Base
  validates :content, presence: true

  belongs_to :survey
  has_many :responses
end
