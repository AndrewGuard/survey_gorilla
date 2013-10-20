get '/' do
  erb :index
end

get '/user' do
  erb :user
end

post '/sessions' do
  # sign-in
  @email = params[:email]
  user = User.authenticate(@email, params[:password])
  if user
    # successfully authenticated; set up session and redirect
    session[:user_id] = user.id
    redirect '/user'
  else
    # an error occurred, re-render the sign-in form, displaying an error
    # @error = "Invalid email or password."
    erb :index
  end
end
  
post '/user' do

  @user = User.create params[:user]
  # binding.pry
  if @user.valid?
    session[:user_id] = @user.id
    redirect to '/user'
  else
    redirect to '/'
  end
end

get '/sessions/:id' do
  # sign-out -- invoked via AJAX
  # return 401 unless params[:id].to_i == session[:user_id].to_i
  session.clear
  redirect to '/'
  # 200
end

get '/take_survey/:id' do
  @survey = Survey.find(params[:id])
  erb :take_survey
end

# get '/survey_results/:id' do
#   erb :survey_results
# end

get '/view_all_surveys' do
   @all_surveys = Survey.all
  erb :view_all_surveys
end

get '/create_survey' do
  erb :create_survey_page
end

post '/submit_response/:survey_id' do
  @survey = Survey.find(params[:survey_id])
  @survey.questions.each do |question|
    Response.create(voter_id: session[:user_id], question_id: question.id, voter_response: params["survey_shit#{question.id}"])
  end
  redirect to '/user'
end

get '/survey_results/:id' do

   survey_id = params[:id] #.to_i
   voter_response = {}
   @survey_results = Survey.find(survey_id).questions.each do |question|
    voter_response[question.content] = []
     question.responses.each do |response|
      voter_response[question.content] << response.voter_response
    end
  end

    content_type :json
    
    return voter_response.to_json
  #@survey_results = Survey.find(1).questions #.find(1).context
  redirect to '/survey_results'
end

# get '/survey_results/:id' do

#    survey_id = params[:id] #.to_i
#    @survey_results = Survey.find(survey_id).questions.each do |question|
#      question.responses.each do |response|
#       response.voter_response
#     end
#   end

#   #@survey_results = Survey.find(1).questions #.find(1).context
#   redirect to '/survey_results'
# end


get '/survey_results' do
  erb :survey_results
end
