#One of the simpler (but more processor-intensive) ways of sorting a group of items in an array is bubble sort, where each element is compared to the one next to it and they are swapped if the one on the left is larger than the one on the right. This continues until the array is eventually sorted.

#Take in an array into the function
#Arrange the elements of the array into order from smallest to largest 
#Starting with the first two elements, if the one of the left is larger than the one of the right, then swap them. 
#Move along the array an element at a time until all have been checked. 
#Once completed, go back to the start of the array and do it again 
#Iterate through the array until it no longer needs to be sorted

require 'pry-byebug'

def bubble_sort (array)
    num = array.length 

    loop do 

        sorted = false 

        (num - 1).times do |i|
            if array[i] > array[i + 1]
                array[i], array[i + 1] = array[i + 1], array[i]
                sorted = true
        end
    end
    break if not sorted 

    end
    array
end

x = [4,3,78,2,0,2,55,2,34,53,978,432,4678]

p bubble_sort(x)
