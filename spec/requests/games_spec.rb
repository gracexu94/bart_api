require "rails_helper"

describe "Games API" do
  describe "GET /games" do
    before do
      FactoryGirl.create(:game)
    end

    it "returns all the games and their data" do
      get "/api/v1/games"

      expect(response.status).to eq 200  
      body = JSON.parse(response.body) 
      expect(body["total_count"]).to eq Game.count
    end
  end

  describe "GET /api/v1/games/:id" do
    it "returns the requested game dataset" do
      game = FactoryGirl.create(:game, turkID: "TestGETID")

      get "/api/v1/games/#{game.id}" 

      expect(response.status).to eq 200
      body = JSON.parse(response.body) 
      expect(body["game_data"]["turkID"]).to eq "TestGETID"
    end
  end

  describe "POST /api/v1/games" do
    it "creates a game" do
      game_params = { :game => 
        { 
          "score": 500, 
          "min": 0, 
          "max": 100, 
          "turkID": "TESTPOST", 
          "SLA": true, 
          "avg": false, 
          "norm": true, 
          "timestart": "2015-07-27 17:53:02.834884", 
          "timefinish": "2015-07-27 17:55:02.834884", 
          "duration": 120.00, 
          "seed": 15, 
          "playerID": "TESTPLAYER1", 
          "gamenumber": 1, 
          "scoreramp": "TESTING", 
          "limits": [0,1,2,3,4,5,6,7,8,9], 
          "pushes": [0,1,2,3,4,5,6,7,8,9], 
          "cashed": [true,true,false,false,true,true,false,false,true,true]
        }
      }.to_json

      request_headers = {
        "Accept" => "application/json",
        "Content-Type" => "application/json"
      }

      post "/api/v1/games", game_params, request_headers

      expect(response.status).to eq 201 #created
      expect(Game.first.turkID).to eq "TESTPOST"
    end
  end
end
