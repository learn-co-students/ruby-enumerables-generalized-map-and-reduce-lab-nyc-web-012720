# Your Code Here

def map (source)
  result = []
  i = 0
  while i < source.length do
    result.push(yield(source[i]))
    i += 1
  end
  return result
end

def reduce (source, starting_point = nil)
  if starting_point 
     result = starting_point
     i = 0
    else 
     result = source[0]
     i = 1
  end
  
  while i < source.length do
    result = yield(result, source[i])
    i += 1
  end
  return result
  
end