--[[
-- Write a function called ends_in_3(num) that returns true if the final digit
-- of num is 3, and false otherwise.
--]]
function ends_in_3(num)
  return (num % 10) == 3
end

table = {}
table[0] = 13
table[1] = 88
table[2] = 93
table[3] = 99

for i = 0, 3 do
  local result = ends_in_3(table[i])
  print(table[i] .. " ends in 3? " .. tostring(result))
end

