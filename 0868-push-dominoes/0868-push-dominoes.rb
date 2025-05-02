# @param {String} dominoes
# @return {String}
def push_dominoes(dominoes)
nu = dominoes.split('')
nu1 = dominoes.split('')
i = 0
while i < nu.length - 1 
if nu[i] == "R" && nu[i+1] == "."
nu[i+1] = "R"
end
i+=1
end
i = nu1.length - 1
while i > 0
if nu1[i] == "L" && nu1[i-1] == "."
nu1[i-1] = "L"
end
i-=1
end
nu2 = [0]*nu.length
i = nu1.length - 1
while i >= 0
if nu1[i] == "L" && nu[i] == "R"
nu2[i] = 1
nu2[i]+=nu2[i+1]
elsif nu1[i] == "L" && nu[i] == "."
dominoes[i] = "L"
elsif nu1[i] == "." && nu[i] == "R"
dominoes[i] = "R"
end
i-=1
end

i = 0
while i < nu2.length - 1
    if nu2[i] == 0 && nu2[i+1] != 0 && nu2[i+1]%2 == 1
        n  = 0+nu2[i+1]
        n = (n/2)*-1
        j = n
        i+=1
        while j <= n*-1
            if j < 0
                dominoes[i] = "R"
            elsif j > 0
                dominoes[i] = "L"
            else
                dominoes[i] = "."
            end
        i+=1
        j+=1
        end
        elsif nu2[i] == 0 && nu2[i+1] != 0 && nu2[i+1]%2 == 0
        n = nu2[i+1]
        j = 1
        i+=1
        while j <= n
            if j <= n/2
                dominoes[i] = "R"
            else
                dominoes[i] = "L"

            end
        j+=1
        i+=1
        end

        end
    i+=1
end





    return dominoes

end