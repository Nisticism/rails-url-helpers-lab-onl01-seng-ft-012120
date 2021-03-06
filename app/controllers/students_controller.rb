class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    
  end

  def activate
    @student = set_student
    @student.active = !@student.active
    @student.save
    @id = @student.id
    redirect_to "/students/#{@id}"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end