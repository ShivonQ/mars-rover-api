class FaveImgsController < ApplicationController
  before_action :set_fave_img, only: [:show, :update, :destroy]

  # GET /fave_imgs
  def index
    @fave_imgs = FaveImg.all

    render json: @fave_imgs
  end

  # GET /fave_imgs/1
  def show
    render json: @fave_img
  end

  # POST /fave_imgs
  def create
    @fave_img = FaveImg.new(fave_img_params)

    if @fave_img.save
      render json: @fave_img, status: :created, location: @fave_img
    else
      render json: @fave_img.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fave_imgs/1
  def update
    if @fave_img.update(fave_img_params)
      render json: @fave_img
    else
      render json: @fave_img.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fave_imgs/1
  def destroy
    @fave_img.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fave_img
      @fave_img = FaveImg.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fave_img_params
      params.require(:fave_img).permit(:rover, :cam_name, :image_date, :url, :user_id)
    end
end
