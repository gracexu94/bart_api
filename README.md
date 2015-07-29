##BART API

A simple implementation of a JSON API in Rails. 

Basic authentication required. 

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
 | scoreramp        | string        |
 | limits           | integer array |
 | pushes           | integer array |
 | cashed           | boolean array |
```
If no value is specified the default is nil or an empty array. 

You can use a third party tool like [Postman](https://www.getpostman.com/) when making requests, or curL from the command line.

Example requests: 
```
curl -X GET http://localhost:3000/api/v1/games 
```
Returns a JSON object of all games and their data. 

```
curl -X GET http://localhost:3000/api/v1/games/1
```
Returns a JSON object containing the data of the game with id 1. 

```
curl -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d '{
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
      "scoreramp": "TESTING", 
      "limits": [0,1,2,3,4,5,6,7,8,9], 
      "pushes": [0,1,2,3,4,5,6,7,8,9], 
      "cashed": [true,true,false,false,true,true,false,false,true,true]
    }
}' 'http://localhost:3000/api/v1/games'
```
Returns a JSON object containing the newly created game. 


