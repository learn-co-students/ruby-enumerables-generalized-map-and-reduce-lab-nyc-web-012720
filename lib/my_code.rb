def map(array)
  new_array = []
  l = array.length 
  counter = 0 
  while counter < l 
  new_array.push(yield(array[counter]))
  counter += 1 
  end 
  new_array
end


def reduce(array, sv = nil)
    l = array.length
    if sv 
        sum = sv 
        i = 0
    else 
        sum = array[0]
        i = 1
    end 
    
    while i < l
        sum = yield(sum, array[i])
        i += 1
    end 
    sum

end 


