# frozen_string_literal: true

module V1
  class TeachersController < ApplicationController
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

    def correct_exam
      teacher.correct_exam(params[:exam_id], params[:score])
      render json: {}, status: :ok
    rescue StandardError => e
      render json: e, status: :bad_request
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
end
