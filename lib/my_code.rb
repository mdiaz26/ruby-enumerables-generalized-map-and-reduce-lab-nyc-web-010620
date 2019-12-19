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
  while count < array.length do |element|
  count += yield(element)
    end
  end
end