module Api
  module V1
    class GamesController < ApplicationController
      include ActionController::HttpAuthentication::Basic::ControllerMethods
      before_action :set_game, only: [:show, :update, :destroy]
      before_filter :authenticate

      # GET /games
      def index
        @games = Game.all
      end

      # GET /games/1
      def show
        @game = Game.find(params[:id])
      end

      # POST /games
      def create
        @game = Game.new(game_params)

        if @game.save
          render json: @game, status: :created, location: "api/v1/games/#{@game.id}"
        else
          render json: @game.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /games/1
      def update
      #  @game = Game.find(params[:id])

      #  if @game.update(game_params)
      #    head :no_content
      #  else
      #    render json: @game.errors, status: :unprocessable_entity
      #  end
      render json: { message: 'PATCH/PUT requests currently not supported' }, status: :not_found
      end

      # DELETE /games/1
      def destroy
      #  @game.destroy

      #  head :no_content
      render json: { message: 'DELETE requests currently not supported' }, status: :not_found
      end

      protected
        
        def authenticate 
          authenticate_or_request_with_http_basic do |username, password|
            username == "admin" && password == ENV["BART_API_PASSWORD"]
          end
        end

      private

        def set_game
          @game = Game.find(params[:id])
        end

        def game_params
          params.require(:game).permit(:score, :min, :max, :turkID, :SLA, :avg, :norm, :timestart, :timefinish, :duration, :seed, :playerID, :gamenumber, :ramp, limits: [], pushes: [], cashed: [], stamps: [])
        end
    end
  end
end
