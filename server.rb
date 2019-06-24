require "sinatra"
require "googlebooks"

get "/" do
  erb :home
end
get "/layout" do
  erb :layout
end
get "/results" do
  erb :results
end
