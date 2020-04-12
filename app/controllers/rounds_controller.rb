class RoundsController < ApplicationController
  before_action :set_round, only: [:show, :update, :destroy]

  # GET /rounds
  def index
    @rounds = Round.all

    render json: @rounds.to_json
  end

  # GET /rounds/1
  def show
    render json: @round.to_json
  end

  # POST /rounds
  def create
    @round = Round.new(round_params)
    @round.user_id = params[:user_id]

    if @round.save
      render json: @round, status: :created, location: @round
    else
      render json: @round.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rounds/1
  def update
    if @round.update(round_params)
      render json: @round
    else
      render json: @round.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rounds/1
  def destroy
    @round.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_round
      @round = Round.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def round_params
      params.require(:round).permit(:play_date, :strokes1, :strokes2, :strokes3, :strokes4, :strokes5, :strokes6, :strokes7, :strokes8, :strokes9, :strokes10, :strokes11, :strokes12, :strokes13, :strokes14, :strokes15, :strokes16, :strokes17, :strokes18)
    end
end
