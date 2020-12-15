require 'sinatra/flash'

get '/' do 
  @posts = Post.all
  erb :"posts/index"
end

get '/edit/:id' do 
  @post = Post.find(params[:id])
  erb :"posts/edit"
end

post '/create' do
  @post = Post.create(content: params[:content])

  flash[:success] = "Created post succesfully"
  redirect '/'
end

delete '/delete/:id' do 
  @post = Post.find(params[:id])
  @post.destroy
  flash[:error] = "Post deleted succesfully"
  redirect '/'
end

patch '/update/:id' do 
  @post = Post.find(params[:id])
  @post.update(content: params[:content])

  flash[:success] = "Post updated"
  redirect '/'
  redirect '/'
end
