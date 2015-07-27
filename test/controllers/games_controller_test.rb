require 'test_helper'

class GamesControllerTest < ActionController::TestCase
  setup do
    @game = games(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:games)
  end

  test "should create game" do
    assert_difference('Game.count') do
      post :create, game: { SLA: @game.SLA, avg: @game.avg, cashed: @game.cashed, duration: @game.duration, gamenumber: @game.gamenumber, limits: @game.limits, max: @game.max, min: @game.min, norm: @game.norm, playerID: @game.playerID, pushes: @game.pushes, score: @game.score, scoreramp: @game.scoreramp, seed: @game.seed, timefinish: @game.timefinish, timestart: @game.timestart, turkID: @game.turkID }
    end

    assert_response 201
  end

  test "should show game" do
    get :show, id: @game
    assert_response :success
  end

  test "should update game" do
    put :update, id: @game, game: { SLA: @game.SLA, avg: @game.avg, cashed: @game.cashed, duration: @game.duration, gamenumber: @game.gamenumber, limits: @game.limits, max: @game.max, min: @game.min, norm: @game.norm, playerID: @game.playerID, pushes: @game.pushes, score: @game.score, scoreramp: @game.scoreramp, seed: @game.seed, timefinish: @game.timefinish, timestart: @game.timestart, turkID: @game.turkID }
    assert_response 204
  end

  test "should destroy game" do
    assert_difference('Game.count', -1) do
      delete :destroy, id: @game
    end

    assert_response 204
  end
end
