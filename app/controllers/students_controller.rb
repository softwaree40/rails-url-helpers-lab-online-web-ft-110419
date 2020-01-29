class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
    render "students/index"
  end

  def show
    @student = Student.find(params[:id])
    if @student.save
      
    render "students/show"
    
    end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end