class RoverManifestsController < ApplicationController
  before_action :set_rover_manifest, only: [:show, :update, :destroy]

  # GET /rover_manifests
  def index
    @rover_manifests = RoverManifest.all

    render json: @rover_manifests
  end

  # GET /rover_manifests/1
  def show
    render json: @rover_manifest
  end

  # POST /rover_manifests
  def create
    @rover_manifest = RoverManifest.new(rover_manifest_params)

    if @rover_manifest.save
      render json: @rover_manifest, status: :created, location: @rover_manifest
    else
      render json: @rover_manifest.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rover_manifests/1
  def update
    if @rover_manifest.update(rover_manifest_params)
      render json: @rover_manifest
    else
      render json: @rover_manifest.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rover_manifests/1
  def destroy
    @rover_manifest.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rover_manifest
      @rover_manifest = RoverManifest.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rover_manifest_params
      params.require(:rover_manifest).permit(:name, :landing_date, :launch_date, :status, :max_sol, :max_date, :portrait, :total_photos)
    end
end
