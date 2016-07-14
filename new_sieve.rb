def sieve_s(n) 


  primes = [] 
  
  p_p = Array.new(n+1, :possible)
  p_p[0] = false
  p_p[1] = false

  p_p.each_index do |index|
    if p_p[index] == :possible
      primes << index
      p_p[index] = true 
      multiple = index * 2
      while multiple <= n 
        p_p[multiple] = false 
        multiple = multiple + index 

      end
    end 
  end
  return primes
end 

puts sieve_s(1000)
