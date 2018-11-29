def fibonacci(n)
  if n < 2
    return n;
  else
    return fibonacci(n - 2) + fibonacci(n - 1);
  end
end

class Fibo
  @@memo = [0, 1]

  def self.calc(n)
    unless @@memo[n]
      @@memo[n] = self.calc(n - 2) + self.calc(n - 1);
    end
    return @@memo[n]
  end
end


# 35.times do |n|
#   p "A fibonacci(#{n}) : #{fibonacci(n)}"
# end
10.times do |n|
  p "B fibonacci(#{n}) : #{Fibo.calc(n)}"
end

