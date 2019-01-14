class BridgesController < ApplicationController
  before_action :set_bridge, only: [:show, :edit, :update]

  def index
    @bridges = Bridge.all
  end

  def show
  end

  def edit
  end

  def update
    @bridge.update(params[:bridge])
    redirect_to bridges_path, notice: "Le bridge a été mis à jour."
  end

  private

  def set_bridge
    @bridge = Bridge.find(params[:id])
  end

  def bridge_params
    params.require(:bridge).permit(:location, :fugue)
  end
end
