(1..10).each do |i|
  p (-> (n) do
    n.tap { break :fizz  if (n % 3) == 0 }
     .tap { break :buzz  if (n % 5) == 0 }
     .tap { break :fizzbuzz  if (n % 15) == 0 }
  end).call(i)
end
