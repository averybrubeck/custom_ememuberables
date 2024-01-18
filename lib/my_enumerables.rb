module Enumerable

  def my_all?
    my_each { |elem| return false unless yield(elem) }
    true
  end

  def my_any
    any_true = false
    for item in self
      any_true = true if yield(item)
    end
    any_true
  end
  
  def my_count
    count = 0 
    my_each { |i| count += 1 if yield(i)}
    count
  end

  def my_each_with_index
    i = 0
    for elem in self
      yield(elem, i)
      i += 1
    end
  end

  def my_inject(accumulator = 0)
    base = accumulator
    i = 0
    until i == self.length do
      base = yield(base, self[i])
      i += 1
    end
    base
  end

  def my_map
    new_array = []
    my_each { |i| new_array << yield(i)}
    new_array
  end

  def my_none
    if block_given?
      result = true
      my_each { |i| result = false if yield(i)}
      result
    else
      self
    end
  end

  def my_select

  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array

  def my_each
    for elem in self
      yield(elem)
    end
  end
end
