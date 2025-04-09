# First way
vowels = ["a","e","i","o","u"]

str = gets.chomp.downcase

count = 0

for i in 0..vowels.length-1
  if str.include? vowels[i]
    count+=1 #here it counts once per vowel thats why I have included second way
  end
end
p count
    

# Second way

vowels = ["a", "e", "i", "o", "u"]
str = gets.chomp.downcase

count = 0
vowels.each do |v|
  count += 1 if str.include? v
end

p count
