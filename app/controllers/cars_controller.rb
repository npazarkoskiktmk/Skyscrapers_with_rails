class CarsController < ApplicationController
  before_action :find_car, only: %i[show edit update destroy]

  def index
    @cars= Car.all
  end

  def show

  end

  def new
    @car=Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to cars_path, notice: "New car has been added!"
    else
      render 'new'
    end
  end

  def edit
    @car= Car.find(params[:id])
  end

  def update
    @car= Car.find(params[:id])
    if @car.update(car_params)
      redirect_to cars_path
    else
      render 'edit'
    end
  end

  def destroy
    @car= Car.find(params[:id])
    @car.destroy
    redirect_to cars_path
  end

  def car_params
    params.require(:car).permit(:model, :constructor, :year)
  end

  def find_car
    @car = Car.find(params[:id])
  end
end
