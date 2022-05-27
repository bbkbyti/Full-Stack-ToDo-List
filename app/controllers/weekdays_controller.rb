class WeekdaysController < ApplicationController
  before_action :set_weekday, only: :destroy

  # GET /weekdays
  def index
    @weekdays = Weekday.all

    render json: @weekdays
  end

  # GET /weekdays/1
  def show
    render json: @weekday, include: :todos
  end


  def add_to_weekday
    @todo = Todo.find(params[:todo_id])
    @todo.weekdays << @weekday
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weekday
      @weekday = Weekday.find(params[:id])
    end

    # Only allow a list of trusted parameters through.

end
