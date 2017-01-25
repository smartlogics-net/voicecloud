class InstancesController < ApplicationController
  def index
   @instances = Instance.all
  end

  def show
   @instance = Instance.find(params[:id])
  end

  def new
  end

  def create
    @instance = Instance.new(instance_params)

    @instance.save
    redirect_to @instance
  end

  private
    def instance_params
      params.require(:instance).permit(:title, :text)
    end
end
