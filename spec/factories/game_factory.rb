FactoryGirl.define do
  factory :game do
    score 600
    min 100
    max 725 
    turkID "test123"
    SLA false
    avg false
    norm true
    timestart DateTime.now
    timefinish DateTime.now
    duration 68.5
    seed 1
    playerID "testplayer1"
    gamenumber 1
    ramp "testgamedata"
    limits [0,1,2,3,4,5,6,7,8,9]
    pushes [0,1,2,3,4,5,6,7,8,9]
    cashed [false,false,true,true,false,false,true,true,false,false]
    stamps [9089,9248,9400,9560,9712,9882,10032,10800,10960,11104,11264,11432,11576,11736,12616,12776]
  end
end