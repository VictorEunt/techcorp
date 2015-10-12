class TechClassesController < ApplicationController
  before_action :set_tech_class, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @tech_classes = TechClass.all
    respond_with(@tech_classes)
  end

  def show
    respond_with(@tech_class)
  end

  def new
    @tech_class = TechClass.new
    respond_with(@tech_class)
  end

  def edit
  end

  def create
    @tech_class = TechClass.new(tech_class_params)
    @tech_class.save
    respond_with(@tech_class)
  end

  def update
    @tech_class.update(tech_class_params)
    respond_with(@tech_class)
  end

  def destroy
    @tech_class.destroy
    respond_with(@tech_class)
  end

  private
    def set_tech_class
      @tech_class = TechClass.find(params[:id])
    end

    def tech_class_params
      params.require(:tech_class).permit(:number, :section, :day, :time, :year)
    end
end
