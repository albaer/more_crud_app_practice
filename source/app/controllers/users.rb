#### USER LOGIN ROUTES ####

get "/users/login" do
	erb :"users/login"
end

post "/users/login" do
	@current_user = User.authenticate(params[:username], params[:password])
	
	if @current_user
		session[:user_id] = @current_user.id
		redirect "/"
	else
		redirect "/users/login"
	end
end

get "/users/logout" do
	session.clear
	redirect "/"
end


#### CREATE NEW USER ROUTES ####

get "/users/new" do
	erb :"users/new"
end

post "/users/new" do
	user = User.create(params[:user])
	session[:user_id] = user.id
	redirect "/"
end

#### USER PAGE ROUTES ####

get "/users/:id" do
	@user = User.find_by_id(params[:id])
	@created_groups = @user.created_groups
	@joined_groups = @user.joined_groups
	erb :"users/show"
end