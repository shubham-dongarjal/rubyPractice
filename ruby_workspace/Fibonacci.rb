a = 0
b = 1
fib = 0
p a
p b

n = gets.to_i 

for i in 1..n-2
  fib = a+b
  p fib
  a = b
  b = fib
end
