# @param {String} s
# @return {String[]}
def find_repeated_dna_sequences(s)
    i = 0
    hash = Hash.new
    sen = s[i,10]
    hash[sen] = 0
    i = 10
    while i < s.length
        sen += s[i]
        sen.slice!(0)
        if hash[sen] == nil
            hash[sen] = 0
        else
            hash[sen] += 1
        end
    i+=1
    end
    nu = []
    hash.each_key do|key|

        if hash[key] > 0
            nu.push(key)
        end
    end
    nu
end