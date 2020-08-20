class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :update]
  
  def index
    @students = Student.all
  end

  def show
  end

  def update
    if !@student.active
      @student.active = true
      @student.save
      redirect_to student_path(@student)
    else
      @student.active = false
      @student.save
      redirect_to student_path(@student)
    end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end