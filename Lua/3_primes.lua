function ends_in_3(num)
  return (num % 10) == 3
end


function is_prime(num)
  if num <= 1 then
    return false
  elseif num <= 3 then
    return true
  elseif num % 2 == 0 or num % 3 == 0 then
    return false
  else
    local i = 5
    while i * i <= num do
      if num % i == 0 or num % (i + 2) == 0 then
        return false
      end
      i = i + 6
    end
    return true
  end
end

function primes_ending_in_3(num)
  local n = 5
  local primes = {3}
  while #primes < num do
    if is_prime(n) and ends_in_3(n) do
      table.insert(primes, n) 
    end
    n = n + 6
  end
  return primes
end
