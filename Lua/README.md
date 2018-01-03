# Lua

### Lua wiki

- http://lua-users.org/wiki/LuaDirectory

### Programming in Lua (First Edition)

- https://www.lua.org/pil/contents.html

### Lua reference manual

- https://www.lua.org/manual/5.3/

### Difference between a `while` loop and a `repeat` loop

- A while loop repeats while a condition remains true.

```lua
print ("\nwhile")
j=14
while j < 20 do
        print (j)
        j = j + 1
end
```

- An until loop tests at the END of the iteration and repeats while a condition remains FALSE.

```lua
print ("\nrepeat until")
repeat
        print (j)
        j = j - 1
until j <= 13
```
