# frozen_string_literal: true
module V1
  class CoursesController < ApplicationController
    # GET /courses
    # GET /courses.json
    def index
      Course.all
    end

    # GET /courses/1
    # GET /courses/1.json
    def show
      render json: course
    end

    # POST /courses
    # POST /courses.json
    def create
      course = Course.new(course_params)

      if course.save
        render json: course, status: :created
      else
        render json: course.errors, status: :unprocessable_entity
      end
    end

    def update
      return render json: course if course.update(course_params)

      render json: course.errors, status: :unprocessable_entity
    end

    def status
      render json: course.status
    end

    # DELETE /courses/1
    # DELETE /courses/1.json
    def destroy
      course.destroy!
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def course
      @course ||= Course.find(params[:id])
    end

    def course_params
      params.require(:course).permit(:name, :worload, :price)
    end
  end
end