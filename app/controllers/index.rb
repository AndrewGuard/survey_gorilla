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
  redirect to ('/')
  # 200
end

get '/take_survey/:id' do
  @survey = Survey.find(params[:id])
  erb :take_survey
end


get '/survey_results/:id' do
  erb :survey_results
end


get '/view_all_surveys' do
   @all_surveys = Survey.all
  erb :view_all_surveys
end







