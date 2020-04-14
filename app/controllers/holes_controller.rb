class HolesController < ApplicationController
  before_action :set_hole, only: [:index ,:show, :update, :destroy]

  # GET /holes
  def index
    @holes = Hole.all

    render json: @holes
  end

  # GET /holes/1
  def show
    render json: @hole
  end

  # POST /holes
  def create
    @hole = Hole.new(hole_params)
    @hole.round_id = params[:round_id]

    if @hole.save
      render json: @hole, status: :created, location: @hole
    else
      render json: @hole.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /holes/1
  def update
    if @hole.update(hole_params)
      render json: @hole
    else
      render json: @hole.errors, status: :unprocessable_entity
    end
  end

  # DELETE /holes/1
  def destroy
    @hole.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hole
      @hole = Hole.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def hole_params
      params.require(:hole).permit(:number, :par)
    end
end
