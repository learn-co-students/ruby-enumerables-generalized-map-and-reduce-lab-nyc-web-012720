# Your Code Here
require "pp"

def map(source_array)
  i = 0
  new_array = []
  while i < source_array.length
  new_array << yield(source_array[i])
  i += 1
end
new_array
end

def reduce(source_array, starting_point = 0)
    b =  source_array.any?(true)
    a = !source_array.any?(false)
    total = 0
    i = 0
      if source_array.all?(Integer) == true
        while i < source_array.length do
        total += source_array[i]
        i += 1
        end
        a = total
        b = starting_point
        yield(a , b)
    else
        yield(a, b)
  end
end
