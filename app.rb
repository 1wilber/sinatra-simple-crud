require 'sinatra'
require "sinatra/activerecord"
require './model/models.rb'
require 'sinatra/flash'
require './controllers/posts_controller.rb'
use Rack::MethodOverride

enable :sessions




set :database_file, 'config/database.yml'
set :public_folder, File.join(__dir__, "public")
