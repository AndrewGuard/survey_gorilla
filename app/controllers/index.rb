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
    redirect '/'
  else
    # an error occurred, re-render the sign-in form, displaying an error
    # @error = "Invalid email or password."
    erb :index
  end
end

post '/user' do
  @user = User.new params[:user]
  if @user.save
    session[:user_id] = @user.id
    redirect to '/'
  else
    erb :index
  end
end

delete '/sessions/:id' do
  # sign-out -- invoked via AJAX
  return 401 unless params[:id].to_i == session[:user_id].to_i
  session.clear
  200
end








