module Api
  module V1
    class GamesController < ApplicationController
      before_action :set_game, only: [:show, :update, :destroy]

      # GET /games
      def index
        @games = Game.all

        #render json: @games 
        #render json: { message: 'Resource not found' }, status: :not_found
      end

      # GET /games/1
      def show
        render json: Game.find(params[:id])
      end

      # POST /games
      def create
        @game = Game.new(game_params)

        if @game.save
          render json: @game, status: :created, location: @game
        else
          render json: @game.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /games/1
      def update
        @game = Game.find(params[:id])

        if @game.update(game_params)
          head :no_content
        else
          render json: @game.errors, status: :unprocessable_entity
        end
      end

      # DELETE /games/1
      def destroy
        @game.destroy

        head :no_content
      end

      private

        def set_game
          @game = Game.find(params[:id])
        end

        def game_params
          params.require(:game).permit(:score, :min, :max, :turkID, :SLA, :avg, :norm, :timestart, :timefinish, :duration, :seed, :playerID, :gamenumber, :scoreramp, :limits, :pushes, :cashed)
        end
    end
  end
end
