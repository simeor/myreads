require 'json'
require 'open-uri'

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @books = Book.all
    @top_books = @books.first(10)

    @ranking = nyt_books
  end

  def dashboard
    @user = current_user
    @current_read = @user.readings.where(status: "Currently Reading")
    @read_books = @user.readings.where(status: "Read")
    @want_to_read = @user.readings.where(status: "Want to Read")
  end

  private

  def nyt_books
    url = "https://api.nytimes.com/svc/books/v3/lists/current/hardcover-fiction.json?api-key=#{ENV['NYT_API_KEY']}"
    books_serialized = open(url).read
    books = JSON.parse(books_serialized)
    books["results"]["books"]
  end

end
