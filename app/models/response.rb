class Response < ActiveRecord::Base
  belongs_to :question
  belongs_to :voter, class_name: "User"
  belongs_to :survey, through :questions
end
