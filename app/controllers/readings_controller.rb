class ReadingsController < ApplicationController
  def new
    @reading = Reading.new
  end

  def create
    @reading = Reading.new(reading_params)
    @reading.book = Book.find(params[:book_id])
    @reading.user = current_user
    if @reading.save
      redirect_to dashboard_path
    else
      render 'new'
    end
  end

  private

  def reading_params
    params.require(:reading).permit(:book_id, :start_date, :end_date, :status)
  end
end
