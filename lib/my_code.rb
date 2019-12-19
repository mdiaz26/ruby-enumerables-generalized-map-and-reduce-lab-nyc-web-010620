require "pry"

def map(array)
  new_array = []
  array.map do |element|
    new_array << yield(element)
  end
  new_array
end

def reduce(array, starting_point = nil)
  if starting_point
    result = starting_point
  else
    result = 0
  end
count = 0
  while count < array.length 
    result = yield(starting_point, array[count])
  count += 1 
  end
  result
end