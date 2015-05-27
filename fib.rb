
# iterative solution
def fibs(i)
  fib = [0,1]
  (i-1).times do
    fib << fib[-1] + fib[-2]
  end
  fib
end
fibs(8)  # => [0, 1, 1, 2, 3, 5, 8, 13, 21]


# recursive solution
def fibs_rec(i)
  return i if i <= 1
  fibs_rec(i-2) + fibs_rec(i-1)
end

fibs_rec(8)  # => 21

