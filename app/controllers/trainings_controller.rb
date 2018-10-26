class TrainingsController < ApplicationController
  def index
    @trainings = Training.all
  end

  def show
    @training = Training.find(params[:id])
  end

  def new
    @training = Training.new
  end

  def create
    @training = trainings.build(params_training)
   
    if @training.save
      redirect_to @training 
    else
      render :new
    end
  end

  def edit
    @training = Training.find(params[:id])
  end

  def update
    @training = Training.find(params[:id])

    if @training.update(params_training)
      redirect_to @training
    else
      render :edit
    end
  end

  private
  
  def params_training
    params.require(:training).permit(:title, exercise_attributes: [:id, :title, :set, :repetition])
  end
end
