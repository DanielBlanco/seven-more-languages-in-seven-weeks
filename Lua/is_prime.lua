--[[
-- Write a function called is_prime(num) to test if a number is prime (that is,
-- is divisible by itself and 1)
--
-- In primality theory, this is not the best nor the fastest algorithm, but it
-- works fine for small numbers.
--
-- All primes are of the form 6k ± 1, with the exception of 2 and 3.
-- So test if n is divisible by 2 or 3, then check through all the numbers of
-- form 6k ± 1 <= sqrt(n) (This is 3 times as fast as testing all m).
--
-- In number theory:
-- k = 1 =>  5, 7
-- k = 2 => 11,13
-- k = 3 => 17,19
-- k = 4 => 23,25
-- k = 5 => 29,31
-- ...
--
--]]
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

table = {1, 2, 3, 4, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 16769025, 16769023}

for i = 1, 18 do
  local result = is_prime(table[i])
  print(table[i] .. " prime? " .. tostring(result))
end
