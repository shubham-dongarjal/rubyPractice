def quick_sort(arr)
  return arr if arr.length <=1
  
  
  left, right = [],[]
  
  pivot = arr.delete_at(rand(arr.length))
  
  arr.each do |element|
    if element<=pivot
      left << element
    else
      right << element
    end
  end
  return quick_sort(left)+ [pivot]+quick_sort(right)
end

arr = [55,33,23,6,78,56,45,35,2,7,85,34]

p quick_sort(arr)
