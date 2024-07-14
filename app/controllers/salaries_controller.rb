class SalariesController < ApplicationController
  before_action :set_salary, only: %i[ show update destroy ]

  # GET /salaries
  def index
    @salaries = Salary.all

    render json: @salaries
  end

  # GET /salaries/1
  def show
    render json: @salary
  end

  # POST /salaries
  def create
    @salary = Salary.new(salary_params)

    if @salary.save
      render json: @salary, status: :created, location: @salary
    else
      render json: @salary.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /salaries/1
  def update
    if @salary.update(salary_params)
      render json: @salary
    else
      render json: @salary.errors, status: :unprocessable_entity
    end
  end

  # DELETE /salaries/1
  def destroy
    @salary.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_salary
      @salary = Salary.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def salary_params
      params.require(:salary).permit(:amount)
    end
end
