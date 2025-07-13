# @param {Integer[]} players
# @param {Integer[]} trainers
# @return {Integer}
def match_players_and_trainers(players, trainers)
i = 0
j = 0
players  = players.sort
trainers = trainers.sort
while i < players.length && j < trainers.length
if players[i] <= trainers[j] 
i+=1
j+=1
else 
j+=1
end
end
return i
    
end