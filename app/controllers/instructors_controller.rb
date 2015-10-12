class InstructorsController < ApplicationController
  before_action :set_instructor, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @instructors = Instructor.all
    respond_with(@instructors)
  end

  def show
    respond_with(@instructor)
  end

  def new
    @instructor = Instructor.new
    respond_with(@instructor)
  end

  def edit
  end

  def create
    @instructor = Instructor.new(instructor_params)
    @instructor.save
    respond_with(@instructor)
  end

  def update
    @instructor.update(instructor_params)
    respond_with(@instructor)
  end

  def destroy
    @instructor.destroy
    respond_with(@instructor)
  end

  private
    def set_instructor
      @instructor = Instructor.find(params[:id])
    end

    def instructor_params
      params.require(:instructor).permit(:title, :first_name, :last_name, :position)
    end
end
