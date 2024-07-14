class EmployeeStatusesController < ApplicationController
  before_action :set_employee_status, only: %i[ show update destroy ]

  # GET /employee_statuses
  def index
    @employee_statuses = EmployeeStatus.all

    render json: @employee_statuses
  end

  # GET /employee_statuses/1
  def show
    render json: @employee_status
  end

  # POST /employee_statuses
  def create
    @employee_status = EmployeeStatus.new(employee_status_params)

    if @employee_status.save
      render json: @employee_status, status: :created, location: @employee_status
    else
      render json: @employee_status.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /employee_statuses/1
  def update
    if @employee_status.update(employee_status_params)
      render json: @employee_status
    else
      render json: @employee_status.errors, status: :unprocessable_entity
    end
  end

  # DELETE /employee_statuses/1
  def destroy
    @employee_status.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_status
      @employee_status = EmployeeStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employee_status_params
      params.require(:employee_status).permit(:employee_id, :job_id, :department_id, :salary_id, :manager_id, :start_date, :finish_date, :address_id, :record_replaced_date, :record_ended_date)
    end
end
