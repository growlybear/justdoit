require 'sinatra'
require 'slim'
require 'data_mapper'


DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/development.db")

class Task
  include DataMapper::Resource

  property :id,             Serial
  property :name,           String, :required => true
  property :completed_at,   DateTime
end

DataMapper.finalize


get '/' do
  @tasks = Task.all
  slim :index
end

post '/' do
  Task.create params[:task]
  redirect to('/')
end

