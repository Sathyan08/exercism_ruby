class Prime
  def self.nth(num)
    @@primes = [2]
    @@counter = 2
    self.has_nth_prime?(num, @@counter)
  end

  def self.has_nth_prime?(num, counter)
    (num > @@primes.length) ? self.find_primes(num, counter) : self.return_prime(num)
  end

  def self.find_primes (num, counter)
    @@counter += 1
    @@primes << num if self.prime?(num)
    self.has_nth_prime?(num, @@counter)
  end

  def self.prime?(num)
    @@primes.each { |prime| return false if num % prime == 0 }
    true
  end

  def self.return_prime(num)
    @@primes[num - 1]
  end

end
