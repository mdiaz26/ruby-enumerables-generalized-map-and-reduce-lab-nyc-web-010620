require "pry"

def map(array)
  new_array = []
  array.map do |element|
    new_array << yield(element)
  end
  new_array
end

def reduce(array)
  array.reduce do |element|
    n += yield(element, n = 0)
    binding.pry
  end
end