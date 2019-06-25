require "sinatra"
require "googlebooks"

get "/" do
  erb :home
end
get "/layout" do
  erb :layout
end
get "/results" do
  def result
    books = GoogleBooks.search("#{params[:search]}")
    firstBook = books.first
    @title = firstBook.title
    @author = firstBook.authors
    @image = firstBook.image_link
    @link = firstBook.info_link
  end
  result()
  erb :results
end
