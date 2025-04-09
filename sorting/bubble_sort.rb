# basic way
arr = [22,33,42,12,23,55,34,75,35,11,5]

for i in 0 ... arr.length-1 do
  for j in 0 ... (arr.length-i-1) do
    if(arr[j]>arr[j+1])
      arr[j+1],arr[j] = arr[j],arr[j+1]
    end
  end
end

p arr

# optimized way it breaks if it is already sorted
arr = [22,33,42,12,23,55,34,75,35,11,5]

for i in 0 ... arr.length-1 do
  swapped = false
  for j in 0 ... (arr.length-i-1) do
    if(arr[j]>arr[j+1])
      arr[j+1],arr[j] = arr[j],arr[j+1]
      swapped = true
    end
  end
  break unless swapped
end

p arr
