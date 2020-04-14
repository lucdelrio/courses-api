class TeachersController < ApplicationController
  # before_action :set_teacher, only: [:show, :update, :destroy]

  # GET /teachers
  # GET /teachers.json
  def index
    Teacher.all
  end

  # GET /teachers/1
  # GET /teachers/1.json
  def show
    render json: teacher
  end

  # POST /teachers
  # POST /teachers.json
  def create
    teacher = Teacher.new(teacher_params)

    if teacher.save
      render json: teacher, status: :created
    else
      render json: teacher.errors, status: :unprocessable_entity
    end
  end

  def update
    return render json: teacher if teacher.update(teacher_params)

    render json: teacher.errors, status: :unprocessable_entity
  end

  # DELETE /teachers/1
  # DELETE /teachers/1.json
  def destroy
    teacher.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def teacher
      @teacher ||= Teacher.find(params[:id])
    end

    def teacher_params
      params.require(:teacher).permit(:name, :surname, :birthdate, :address, :email, :phone_number)
    end
end
