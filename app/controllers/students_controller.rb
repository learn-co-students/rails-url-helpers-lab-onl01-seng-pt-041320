class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  # click on student's name on index page and be taken to that specific student's show page
  def show

  end

  def activate
    @student = Student.find(params[:id])
    @student.active ? @student.active = false : @student.active = true
    @student.save
    redirect_to student_path(@student)
  end

  private
    def set_student
      @student = Student.find(params[:id])
    end
end