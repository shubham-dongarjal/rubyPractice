arr=[1,2,3,4,5,6,7,8,9,11]

left = 0 
right = arr.length-1
while left <= right
  mid = (left+right)/2
  if arr[mid] == mid + 1 
    left = mid + 1 
  else
    right = mid - 1
  end
end
if left <arr.length
  puts left+1
end 
