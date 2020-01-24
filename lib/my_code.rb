# Your Code Here
def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new << (yield(source_array[i]))
    #unique code
    i += 1
  end
  new
end


def reduce(source_array, sv=nil)
  if sv
    total = sv
    i = 0
  else
    total = source_array[0]
    i = 1
  end
  while i < source_array.length do
    total = yield(total, source_array[i])
    i += 1
  end
  total
end
