class StudentsController < ApplicationController
  before_action :find_student, only: [:show, :edit, :update]

  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(name: params[:student][:name], mod: params[:student][:mod])
  end

  def update
    @student.update(name: params[:student][:name], mod: params[:student][:mod])
    redirect_to student_path(@student)
  end

  private

  def find_student
    @student = Student.find(params[:id])
  end

  # def student_params
  #   require(:student).permit(:name, :mod)
  # end

end
