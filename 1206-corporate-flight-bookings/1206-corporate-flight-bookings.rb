# @param {Integer[][]} bookings
# @param {Integer} n
# @return {Integer[]}
def corp_flight_bookings(bookings, n)
nu = [0]*(n+1)
i = 0
while i < bookings.length
nu[bookings[i][0]-1] += bookings[i][2]
nu[bookings[i][1]] -= bookings[i][2]
i+=1
end
i = 1
while i < nu.length
    nu[i]+=nu[i-1]
i+=1
end
nu.delete_at(nu.length-1)
return nu
    
end