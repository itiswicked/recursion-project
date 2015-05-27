

def sort(ary)
  return ary if ary.size == 1                 # Base cases, no need for further
  return [ary.min, ary.max] if ary.size == 2  # splitting of array. Conquer.
  first_half  = sort ary[0..(ary.size/2)]     # Splitting the array in half.
  second_half = sort ary[(ary.size/2+1)..-1]  # Divide.
  merge(first_half, second_half)
end

def merge(ary_a, ary_b, sorted_ary = [])
  # Base cases, taking leftover elements and adding them to
  # sort_array if other array is empty.
  return sorted_ary.concat ary_a if ary_b.empty?
  return sorted_ary.concat ary_b if ary_a.empty?
  # Comparing first two item of each array.
  if ary_a[0] < ary_b[0]
    sorted_ary << ary_a[0]
  # Calling merge without element that was added sorted_ary
    merge(ary_a[1..-1], ary_b, sorted_ary)
  else
    sorted_ary << ary_b[0]
    merge(ary_a, ary_b[1..-1], sorted_ary)
  end
end


# Cases

sort [74, 70, 74, 68, 9, 42, 98, 48, 88, 67] 
# => [9, 42, 48, 67, 68, 70, 74, 74, 88, 98]
sort [6, 43, 54, 16, 89, 80, 81, 78, 31, 50]     
# => [6, 16, 31, 43, 50, 54, 78, 80, 81, 89]
sort [55, 51, 17, 23, 67, 47, 82, 66, 88, 34]    
# => [17, 23, 34, 47, 51, 55, 66, 67, 82, 88]



