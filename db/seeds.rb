User.create :name=> 'Bill', :email=> 'bill@bill.com', :password=> '123456'
User.create :name=> 'Andrew', :email=> 'Andrew@bill.com', :password=> '123456'

Participation.create :user_id=> '1', :survey_id=> '1'
Participation.create :user_id=> '1', :survey_id=> '2'
Participation.create :user_id=> '1', :survey_id=> '3'
Participation.create :user_id=> '2', :survey_id=> '1'
Participation.create :user_id=> '2', :survey_id=> '3'

Survey.create :title=> 'Genetics', :creator_id=> '1'
Question.create :content=> 'Do you love genetics?', :survey_id=> '1'
Question.create :content=> 'Do you find genetics confusing?', :survey_id=> '1'
Question.create :content=> 'Do you understand it?', :survey_id=> '1'

Survey.create :title=> 'Countries Andrew has lived in.', :creator_id=> '2'
Question.create :content=> 'Do you love Andrew?', :survey_id=> '2'
Question.create :content=> 'How often is Andrew living in America?', :survey_id=> '2'
Question.create :content=> 'How often does Andrew mention the countries he\'s lived in?', :survey_id=> '2'
Question.create :content=> 'Do you think about moving to another country?', :survey_id=> '2'

Survey.create :title=> 'Phase II evaluation.', :creator_id=> '3'
Question.create :content=> 'Are you comfortable with jQuery?', :survey_id=> '3'
Question.create :content=> 'Do you find jQuery confusing?', :survey_id=> '3'
Question.create :content=> 'Do you understand it?', :survey_id=> '3'
Question.create :content=> 'Do you find CSS intuitive?', :survey_id=> '3'
Question.create :content=> 'Is ActiveRecord your friend?', :survey_id=> '3'

Response.create :voter_id=>'1', :question_id=> '1', :voter_response=> ['sometimes','never','always'].sample
Response.create :voter_id=>'1', :question_id=> '2', :voter_response=> ['sometimes','never','always'].sample
Response.create :voter_id=>'1', :question_id=> '3', :voter_response=> ['sometimes','never','always'].sample
Response.create :voter_id=>'1', :question_id=> '4', :voter_response=> ['sometimes','never','always'].sample
Response.create :voter_id=>'1', :question_id=> '5', :voter_response=> ['sometimes','never','always'].sample
Response.create :voter_id=>'1', :question_id=> '6', :voter_response=> ['sometimes','never','always'].sample
Response.create :voter_id=>'1', :question_id=> '7', :voter_response=> ['sometimes','never','always'].sample
Response.create :voter_id=>'1', :question_id=> '8', :voter_response=> ['sometimes','never','always'].sample
Response.create :voter_id=>'1', :question_id=> '9', :voter_response=> ['sometimes','never','always'].sample
Response.create :voter_id=>'1', :question_id=> '10', :voter_response=> ['sometimes','never','always'].sample
Response.create :voter_id=>'1', :question_id=> '11', :voter_response=> ['sometimes','never','always'].sample
Response.create :voter_id=>'1', :question_id=> '12', :voter_response=> ['sometimes','never','always'].sample

Response.create :voter_id=>'2', :question_id=> '1', :voter_response=> ['sometimes','never','always'].sample
Response.create :voter_id=>'2', :question_id=> '2', :voter_response=> ['sometimes','never','always'].sample
Response.create :voter_id=>'2', :question_id=> '3', :voter_response=> ['sometimes','never','always'].sample
Response.create :voter_id=>'2', :question_id=> '8', :voter_response=> ['sometimes','never','always'].sample
Response.create :voter_id=>'2', :question_id=> '9', :voter_response=> ['sometimes','never','always'].sample
Response.create :voter_id=>'2', :question_id=> '10', :voter_response=> ['sometimes','never','always'].sample
Response.create :voter_id=>'2', :question_id=> '11', :voter_response=> ['sometimes','never','always'].sample
Response.create :voter_id=>'2', :question_id=> '12', :voter_response=> ['sometimes','never','always'].sample
