class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @books = Book.all
    @top_books = @books.first(10)
  end

  def dashboard
    @user = current_user
    @current_read = @user.readings.where(status: "Currently Reading")
    @read_books = @user.readings.where(status: "Read")
    @want_to_read = @user.readings.where(status: "Want to Read")
  end
end
