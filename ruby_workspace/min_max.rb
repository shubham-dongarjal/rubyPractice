a = [2,3,5,22,3,45,66,76,54,87,10,15]

  min = a[0]
  max = a[0]
  
for i in 1 .. a.length-1
  if a[i] < min
    min = a[i]
  end
  
  if a[i]>max
    max = a[i]
  end
end
p min
p max

    
    
