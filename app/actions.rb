# Homepage (Root path)
get '/' do
  erb :index
end

get '/music' do
  @musics = Music.all
  erb :'music/index'
end

get '/music/new' do
  @music = Music.new
  erb :'music/new'
end

post '/music' do
  @music = Music.new(
    song_title: params[:song_title],
    author: params[:author],
    url: params[:url]
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
