require "pry"

def map(array)
  new_array = []
  array.map do |element|
    new_array << yield(element)
  end
  new_array
end

def reduce(array, starting_point = 0)
count = 0
  while count < array.length do |array, starting_point|
    yield(array, starting_point)
    end
  count += 1 
  end
  starting_point
end