class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @books = Book.all
    @top_books = @books.first(10)
  end

  def dashboard
  end
end
