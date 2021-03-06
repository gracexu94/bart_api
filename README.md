##BART API

A simple implementation of a JSON API in Rails. 

Basic authentication required. 

Live @[bart-game.herokuapp.com](http://bart-game.herokuapp.com)

##HOW TO USE 

Currently supported: GET (/api/v1/games or /api/v1/games/game_id) and POST (/api/v1/games)   
Stores game data (seed info, wins, mouseclicks, etc.) into a postgresql database. 
Database currently supports (along with an automatically generated id and timestamp) the following.
```
 | Parameter Name   | Data Type     |
 | :--------------: | :----------:  |
 | score            | integer       |
 | min              | integer       |
 | max              | integer       | 
 | turkID           | string        |
 | SLA              | boolean       |
 | avg              | boolean       |
 | norm             | boolean       |
 | timestart        | datetime      | 
 | timefinish       | datetime      |
 | duration         | float         |
 | seed             | integer       |
 | playerID         | string        |
 | gamenumber       | integer       |
 | ramp             | string        |
 | limits           | integer array |
 | pushes           | integer array |
 | cashed           | boolean array |
 | stamps           | integer array |
```
If no value is specified the default is nil or an empty array. 

You can use a third party tool like [Postman](https://www.getpostman.com/) when making requests, or curL from the command line.

Example requests (with user and password being secret keys): 
```
curl -X GET -u "user:password" http://localhost:3000/api/v1/games 
```
Returns a JSON object of all games and their data. 

```
curl -X GET -u "user:password" http://localhost:3000/api/v1/games/1
```
Returns a JSON object containing the data of the game with id 1. 

```
curl -X POST -u "user:password" -H "Accept: application/json" -H "Content-Type: application/json" -d '{
    "game":
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
      "ramp": "TESTING", 
      "limits": [0,1,2,3,4,5,6,7,8,9], 
      "pushes": [0,1,2,3,4,5,6,7,8,9], 
      "cashed": [true,true,false,false,true,true,false,false,true,true],
      "stamps": [4594,4740,4892,5068,5253,5428,5572,5732,5884,6039]
    }
}' 'http://localhost:3000/api/v1/games'
```
Returns a JSON object containing the newly created game. 


