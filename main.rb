require 'sinatra'
#require 'sinatra/reloader'
require 'active_record'

ActiveRecord::Base.establish_connection(
    "adapter" => "sqlite3",
    "database" => "./contact.db"
)

class Contact < ActiveRecord::Base
end

before do
    @title = 'Sinatra introduction'
end
after do
end
helpers do
end

get '/' do
    @contacts = Contact.all
    erb :index
end

post '/new' do
    Contact.create({title: params[:title], username: params[:username], body: params[:body]})
    redirect '/'
end
