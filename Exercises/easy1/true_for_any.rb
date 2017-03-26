# Write a method called any? that behaves similarly Enumerable#any? for Arrays.
# It should take an Array as an argument, and a block. It should return true if
# the block returns true for any of the element values. Otherwise, it should
# return false.

def any?(array)
  array.each { |elm| return true if yield(elm) }
  false
end

p any?([1, 3, 5, 6]) { |value| value.even? } == true
p any?([2, 4, 6, 8]) { |value| value.odd? } == false
p any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p any?([1, 3, 5, 7]) { |value| true } == true
p any?([1, 3, 5, 7]) { |value| false } == false
p any?([]) { |value| true } == false
