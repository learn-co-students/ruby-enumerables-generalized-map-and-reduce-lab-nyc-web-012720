require 'pry'

def map(array)
  result = []
  counter = 0 
  
  while counter < array.length do
    result << yield(array[counter])
    counter += 1
  end
  result
end


def reduce(array, starting_value = nil)

  if starting_value
    i = 0 
    result = starting_value
  else
    result = array[0]
    i = 1 
  end
     
  while i < array.length do
    result = yield(result, array[i]) 
    i += 1
  end
  result
end
