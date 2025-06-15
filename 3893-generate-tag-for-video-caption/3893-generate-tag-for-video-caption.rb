# @param {String} caption
# @return {String}
def generate_tag(caption)

i = 1
while i < caption.length 
if caption[i-1] == " " && caption[i].ord >= 'a'.ord && caption[i].ord <= 'z'.ord
caption[i] = (caption[i].ord - 32).chr
elsif caption[i-1] != " "  && caption[i].ord >= 'A'.ord && caption[i].ord <= 'Z'.ord && i != 0
caption[i] = (caption[i].ord + 32).chr
end
i+=1
end
 caption = "#" + caption.split(' ').join("")
i = 1
if caption.length >= 2 && caption[i].ord >= 'A'.ord && caption[i].ord <= 'Z'.ord  
caption[i] = (caption[i].ord + 32).chr
end



   return caption[0,100]
end