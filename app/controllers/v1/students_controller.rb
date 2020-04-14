# frozen_string_literal: true
module V1
  class StudentsController < ApplicationController
    # GET /students
    # GET /students.json
    def index
      Student.all
    end

    # GET /students/1
    # GET /students/1.json
    def show
      render json: student
    end

    # POST /students
    # POST /students.json
    def create
      student = student.new(student_params)

      if student.save
        render json: student, status: :created
      else
        render json: student.errors, status: :unprocessable_entity
      end
    end

    def update
      return render json: student if student.update(student_params)

      render json: student.errors, status: :unprocessable_entity
    end

    # DELETE /students/1
    # DELETE /students/1.json
    def destroy
      student.destroy
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def student
      @student ||= Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:name, :surname, :birthdate, :address, :email, :phone_number)
    end
  end
end