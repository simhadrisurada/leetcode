# @param {String[]} recipes
# @param {String[][]} ingredients
# @param {String[]} supplies
# @return {String[]}
def check1(ingredients,supply)
    i = 0
    while i < ingredients.length
        j = 0
        while j < ingredients[i].length
            if supply[ingredients[i][j]] != nil
                ingredients[i].delete_at(j)
                j-=1
            end
        j+=1
        end
    i+=1
    end
end
def check2()




end
def find_all_recipes(recipes, ingredients, supplies)

i = 0
recipe = Hash.new
supply = Hash.new
while i < recipes.length
recipe[recipes[i]] = 0
i+=1
end
j = 0
while j < supplies.length
supply[supplies[j]] = 0
j+=1
end
n = 0
while n != supply.length
check1(ingredients,supply)
n = supply.length
supply = Hash.new
 i = 0
    while i < recipes.length
        supply[recipes[i]] = 0 if ingredients[i].length == 0
    i+=1
    end
    
end
check1(ingredients,supply)

nu = []
j = 0
i = 0
while i < ingredients.length
if ingredients[i].length == 0
nu[j] = recipes[i] 
j+=1
end
i+=1
end

    return nu
end