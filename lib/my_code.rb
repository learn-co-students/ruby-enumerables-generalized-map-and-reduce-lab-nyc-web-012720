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


def reduce(array, result = 0)
  counter = 0 
  
  while counter < array.length do
    if array[counter] == true
      result = true
    elsif array[counter] == false
      result = false
    else
      result = yield(result, array[counter]) 
    end 
    counter += 1
  end
  result
end
