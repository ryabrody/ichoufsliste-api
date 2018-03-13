class DepartmentsController < ApplicationController
  before_action :set_department, only: [:show, :update, :destroy]

  def index
    @departments = Department.all
    json_response(@departments)
  end

  def create
    @department = Department.create!(department_params)
    json_response(@department, :created)
  end

  def show
    json_response(@department)
  end

  def update
    @department.update(department_params)
    head :no_content
  end

  def destroy
    @department.destroy
    head :no_content
  end

  private

  def department_params
    params.permit(:name)
  end

  def set_department
    @department = Department.find(params[:id])
  end
end
