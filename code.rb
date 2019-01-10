#YOUR CODE GOES HERE
require 'pry'
def duplicate_counter(array)
  counts = {}
  duplicates = 0

  array.each do |elem|

    if counts[elem].nil?
      counts[elem] = 1
      # binding.pry
    else
      counts[elem] += 1
    end
  end


    array.uniq.each do |elem|
      if counts[elem] > 1
        duplicates += counts[elem] - 1
      end
    end
    duplicates
end

# 2+2+2+1+1
puts duplicate_counter([4, 3, 3, 3, 7, 7]) #=>3
# puts duplicate_counter([1,1,1,2,2,2,3,5])
# puts duplicate_counter([2,2,2,2,2])
# puts duplicate_counter([3,4,5,6])
# puts duplicate_counter([0,0,0,0])
# puts duplicate_counter(['2', 2, 3, 4])
