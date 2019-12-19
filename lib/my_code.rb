require "pry"

def map(array)
  new_array = []
  array.map do |element|
    new_array << yield(element)
  end
  new_array
end

def reduce(array, count = 0)
  array.reduce do |element|
    n += yield(element)
    binding.pry
  end
end