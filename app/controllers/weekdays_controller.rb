class WeekdaysController < ApplicationController
  before_action :set_weekday, only: [:show, :update, :destroy]

  # GET /weekdays
  def index
    @weekdays = Weekday.all

    render json: @weekdays
  end

  # GET /weekdays/1
  def show
    render json: @weekday
  end

  # POST /weekdays
  def create
    @weekday = Weekday.new(weekday_params)

    if @weekday.save
      render json: @weekday, status: :created, location: @weekday
    else
      render json: @weekday.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /weekdays/1
  def update
    if @weekday.update(weekday_params)
      render json: @weekday
    else
      render json: @weekday.errors, status: :unprocessable_entity
    end
  end

  # DELETE /weekdays/1
  def destroy
    @weekday.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weekday
      @weekday = Weekday.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def weekday_params
      params.require(:weekday).permit(:day)
    end
end
