def factorial(n)
  product = 1
  p "at the start product is #{product}"
  while n > 1
    product *= n
    n -= 1
    p "we multiply #{product} by #{n}"
    p "we get #{product}"
  end
  product
end

p factorial(5)