# Homepage (Root path)

helpers do
  def current_user
    User.find_by(id: session[:user_id])
  end
end

get '/' do
  if current_user
    erb :index
  else
    erb(:login)
  end
end

get '/signup' do
  @user = User.new
  erb :signup
end

post '/validate_signup' do
   # grab user input values from params
   email = params[:email] 
   name = params[:name]
   password = params[:password]
   
   #instantiate a User
   @user = User.new
   @user.email = params[:email]
   @user.name = params[:name]
   @user.password = params[:password]
   @user.password_confirmation = params[:password_confirmation]
   
   #if user validations pass and user is saved
   if @user.save
       #return readable representation of User object
       #escape_html user.inspect
       session[:user_id] = @user.id
       redirect(to('/'))
   else
       #display error message
       #escape_html user.errors.full_messages
       erb(:signup)
   end
end

get '/login' do
  erb(:login)
end

post '/validate_login' do
    name = params[:name]
    password = params[:password]
    
    user = User.find_by(name: name)
    
    if user && user.password == password
        session[:user_id] = user.id
        redirect(to('/'))
    else
        @error_message = "Login failed."
        erb(:login)
    end
end

get '/logout' do
    session[:user_id] = nil
    #or session.clear!!!
#    erb(:login)
    redirect(to('/login'))
end






get '/music' do
  @music = Music.all
  @musics = @music.sort_by { |s| s.likes.size }.reverse
  erb :'music/index'
end

get '/user_music' do
  @musics = Music.all
  erb :'music/user_music'
end

get '/music/new' do
  @music = Music.new
  erb :'music/new'
end

post '/music' do
  @music = Music.new(
    song_title: params[:song_title],
    author: params[:author],
    url: params[:url],
    user_id: current_user.id
    )

  if @music.save
    redirect '/music'
  else
    erb :'music/new'
  end
end

get '/music/:id' do
  @music = Music.find params[:id]
  erb :'music/show'
end


post '/likes' do
  music_id = params[:music_id]
  like = Like.new(music_id: music_id, user_id: current_user.id)
  like.save
  redirect(back)
end

delete '/likes/:id' do
  like = Like.find(params[:id])
  like.destroy
  redirect(back)
end



post '/comments' do
  text = params[:text]
  music_id = params[:music_id]

  comment = Comment.new(text: text, music_id: music_id, user_id: current_user.id)
  comment.save
  redirect(back)
end


delete '/comments/:id' do
  comment = Comment.find(params[:id])
  comment.destroy
  redirect(back)
end























