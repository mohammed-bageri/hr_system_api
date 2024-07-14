class NationalitiesController < ApplicationController
  before_action :set_nationality, only: %i[ show update destroy ]

  # GET /nationalities
  def index
    @nationalities = Nationality.all

    render json: @nationalities
  end

  # GET /nationalities/1
  def show
    render json: @nationality
  end

  # POST /nationalities
  def create
    @nationality = Nationality.new(nationality_params)

    if @nationality.save
      render json: @nationality, status: :created, location: @nationality
    else
      render json: @nationality.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /nationalities/1
  def update
    if @nationality.update(nationality_params)
      render json: @nationality
    else
      render json: @nationality.errors, status: :unprocessable_entity
    end
  end

  # DELETE /nationalities/1
  def destroy
    @nationality.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nationality
      @nationality = Nationality.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nationality_params
      params.require(:nationality).permit(:name)
    end
end
