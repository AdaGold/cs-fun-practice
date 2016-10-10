#Problem 1

# Write a method mirror that returns a new array doubling the size of a list of integers by appending the mirror image of the original sequence to the end of the list. The mirror image is the same sequence of values in reverse order. For example, if a variable called list stores this sequence of values:
#
# [1, 3, 2, 7] and we make the following call:
#
# mirror(list) then it should return the following values after the call:
#
# [1, 3, 2, 7, 7, 2, 3, 1] Notice that it has been doubled in size by having the original sequence appearing in reverse order at the end of the list. You may not make assumptions about how many elements are in the list.

#------------------------------------------------------------------------
#If the array has four elements, then I need to make the 5th element the same as the 4th, the 6th the same as the 3rd, etc. In this case list[list.length] lets me access the 5th element, then work backward through each element until I reach the element at index 0.

def mirror(list)
  origninal_length = list.length

  origninal_length.times do
    list[list.length] = list[origninal_length-1]
    origninal_length -= 1
  end

  return list

end

puts "Problem #1:"
print mirror([1, 3, 2, 7])

# Problem #2
#
# Write a method switchPairs that switches the order of values in an Array of strings in a pairwise fashion. Your method should switch the order of the first two values, then switch the order of the next two, switch the order of the next two, and so on. This switch should happen in place, meaning no new array should be created. For example, if the list initially stores these values: ["four", "score", "and", "seven", "years", "ago"] your method should switch the first pair, "four", "score", the second pair, "and", "seven", and the third pair, "years", "ago", to yield this list: ["score", "four", "seven", "and", "ago", "years"]
#
# If there are an odd number of values in the list, the final element is not moved. For example, if the original list had been: ["to", "be", "or", "not", "to", "be", "hamlet"] It would again switch pairs of values, but the final value, "hamlet" would not be moved, yielding this list: ["be", "to", "not", "or", "be", "to", "hamlet"]

#------------------------------------------------------------------------
#I need to switch the element at index 0 with the element at index 1, the element with index 2 and the element at index 3, etc. I need to do that until there aren't any more pairs to swap

def switchPairs(list)
  index = 0

    while index < list.length-1 do
    list[index], list[index + 1] = list[index+ 1], list[index]
    index += 2
  end

  return list
end

puts "\nProblem #2:"
print switchPairs(["four", "score", "and", "seven", "years", "ago"])
print switchPairs(["to", "be", "or", "not", "to", "be", "hamlet"])
