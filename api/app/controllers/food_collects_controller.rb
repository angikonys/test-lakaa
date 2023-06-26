class FoodCollectsController < ApplicationController
  def index
    @food_collects = FoodCollect.all

    render json: @food_collects
  end

  def show
    @food_collect = FoodCollect.find(params[:id])

    render json: @food_collect
  en

  def create
    @food_collect = FoodCollect.new(name: params[:name], date: params[:date], organization_id: params[:organization_id])

    if @food_collect.save
      render json: @food_collect
    else
      render json: @food_collect.errors , status: :unprocessable_entity
    end
  end

  def update
    @food_collect = FoodCollect.find(params[:id])
    @food_collect.update(name: params[:name], date: params[:date], organization_id: params[:organization_id])

    render json: @food_collect
  end

  def destroy
    @food_collect = FoodCollect.find(params[:id])
    @food_collect.destroy

    render json: "#{@food_collect.name} has been removed!"
  end
end
