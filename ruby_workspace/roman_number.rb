#way 1 
def roman_to_int(s)
  data = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  array = 0
  string_array = s.chars

  string_array.each_with_index do |char, index|
    if char == 'I' && (string_array[index + 1] == 'V' || string_array[index + 1] == 'X')
      array -= data[char]
    elsif char == 'X' && (string_array[index + 1] == 'L' || string_array[index + 1] == 'C')
      array -= data[char]
    elsif char == 'C' && (string_array[index + 1] == 'D' || string_array[index + 1] == 'M')
      array -= data[char]
    else
      array += data[char]
    end
  end

  array
end

puts roman_to_int("IX")

# way 2

# @param {String} s
# @return {Integer}
def roman_to_int(s)
  data = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }
  total = 0
  prev_value = 0
  s.reverse.each_char do |char|
    current = data[char]
    if current < prev_value
        total -=current
    else
        total+=current
    end
    prev_value = current
  end
  total
end


