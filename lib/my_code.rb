require "pry"

def map(array)
  new_array = []
  array.map do |element|
    new_array << yield(element)
  end
  new_array
end

def reduce(array, starting_point = nil)
  array.reduce do |element, n|
    n += yield(element, n)
    # binding.pry
  end
end