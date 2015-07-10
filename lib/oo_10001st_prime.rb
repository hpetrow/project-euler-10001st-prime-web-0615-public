# Implement your object-oriented solution here!

class Prime
  attr_reader :number

  def initialize(n)
    @number = prime_number_for(n)
  end

  def prime_number_for(n)
    prime_count = 0
    i = 1
    while prime_count < n
      prime_count += 1 if is_prime(i)
      i += 2
    end
    i - 2
  end

  def is_prime(n)
    if n < 1 || n%2 == 0
      false
    elsif n == 1
      true
    else
      prime = true
      i = 3
      while (prime && i <= Math.sqrt(n).floor)
        prime = false if n % i == 0
        i += 2
      end
      prime
    end
  end
end
