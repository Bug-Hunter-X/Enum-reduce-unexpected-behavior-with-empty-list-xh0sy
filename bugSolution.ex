```elixir
list = [1, 2, 3, 4, 5]

Enum.reduce(list, 0, fn x, acc ->
  if x > 3 do
    acc + x
  else
    acc
  end
end)

#Corrected code handling empty list scenario
list = []

Enum.reduce(list, 0, fn x, acc ->
  if x > 3 do
    acc + x
  else
    acc
  end
 end) |> IO.puts() #Output 0

#More robust solution using a safe default
default_value = 0
result = if Enum.empty?(list), do: default_value, else: Enum.reduce(list, default_value, fn x, acc -> if x > 3, do: acc + x, else: acc end)
IO.puts result #Output 0
```