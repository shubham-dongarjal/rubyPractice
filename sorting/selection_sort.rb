arr = [22,33,42,12,23,55,34,75,35,11,5]

for i in 0 ... arr.length-1 do
  min_index=i
  for j in (i+1)...arr.length do
    if arr[j]<arr[min_index]
      min_index = j
    end
  end
  arr[i],arr[min_index] = arr[min_index], arr[i]
end

p arr
