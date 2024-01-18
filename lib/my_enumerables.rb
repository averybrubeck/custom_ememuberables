module Enumerable

  def my_all?
    my_each { |elem| return false unless yield(elem) }
    true
  end

  def my_any
    my_each { |elem| }
  end
  
  def my_count

  end

  def my_each_with_index
    i = 0
    for elem in self
      yield(elem, i)
      i += 1
    end
  end

  def my_inject

  end

  def my_map

  end

  def my_none

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
