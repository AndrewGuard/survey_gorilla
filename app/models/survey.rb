class Survey < ActiveRecord::Base
  validates :title, presence: true

  belongs_to :creator, class_name: 'User'
  has_many :participations
  has_many :questions
  has_many :responses, :through => :questions
end
