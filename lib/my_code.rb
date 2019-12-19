require "pry"

def map(array)
  new_array = []
  array.map do |element|
    new_array << yield(element)
  end
  new_array
end

def reduce(array, starting_point = 0)
pp array
pp starting_point
count = 0
  while count < array.length 
    starting_point = yield(starting_point, array[count])
  count += 1 
  end
  starting_point
end