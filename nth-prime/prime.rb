module Prime

  def self.nth(num)
    data = { }
    data[:primes] = [2]
    data[:counter] = 2
    self.has_nth_prime?(num, data)
  end

  def self.has_nth_prime?(num, data)
    (num > data[:primes].length) ? self.find_primes(num, data) : self.return_prime(num, data)
  end

  def self.find_primes(num, data)
    data[:counter] += 1
    data[:primes] << data[:counter] if self.prime?(data)
    self.has_nth_prime?(num, data)
  end

  def self.prime?(data)
    data[:primes].each { |prime| return false if data[:counter] % prime == 0 }
    true
  end

  def self.return_prime(num, data)
    data[:primes][num - 1]
  end

end
