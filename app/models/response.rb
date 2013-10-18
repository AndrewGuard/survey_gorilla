class Response < ActiveRecord::Base
  validates :voter_response, presence: true

  belongs_to :question
  belongs_to :voter, class_name: "User"
end
