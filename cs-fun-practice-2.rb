# CS Fundamentals Practice #2
#
# For each of the following problems, you should write a single method to solve
# the problem. You will be working with arrays in each problem, but should use
# array indexing and loops to solve the problems. You should **not** utilize
# any [Ruby Array methods](https://ruby-doc.org/core-2.2.0/Array.html), with
# the exception of `<<`, `[]`, and `.length`.
#
# ## Problem #1
# Write a method `mirror` that returns a **new array** doubling the size of a list of integers by appending the mirror image of the original sequence to the end of the list. The mirror image is the same sequence of values in reverse order. For example, if a variable called list stores this sequence of values:
#
# [1, 3, 2, 7]
# and we make the following call:
#
# mirror(list)
# then it should return the following values after the call:
#
# [1, 3, 2, 7, 7, 2, 3, 1]
# Notice that it has been doubled in size by having the original sequence appearing in reverse order at the end of the list. You may not make assumptions about how many elements are in the list.


def mirror(list)
  if list.length == 0
    return []
  end
  if list.length == 1
    return list[0], list[0]
  end
  if list.length > 1
    return list[0], mirror(list[1..-1]), list[0]
  end
end

list = [2,3,4,5,6,7]
print mirror(list)


# Problem #2
# Write a method `switchPairs` that switches the order of values in an Array of strings in a pairwise fashion. Your method should switch the order of the first two values, then switch the order of the next two, switch the order of the next two, and so on. **This switch should happen _in place_, meaning no new array should be created.** For example, if the list initially stores these values: ["four", "score", "and", "seven", "years", "ago"] your method should switch the first pair, "four", "score", the second pair, "and", "seven", and the third pair, "years", "ago", to yield this list: ["score", "four", "seven", "and", "ago", "years"]
#
# If there are an odd number of values in the list, the final element is not moved. For example, if the original list had been: ["to", "be", "or", "not", "to", "be", "hamlet"] It would again switch pairs of values, but the final value, "hamlet" would not be moved, yielding this list: ["be", "to", "not", "or", "be", "to", "hamlet"]

def switchpairs(strings_array)
  if strings_array.length == 1
    return strings_array[0]
  end
  if strings_array.length == 2
    strings_array = strings_array[1],strings_array[0]
    return strings_array
  end
  if strings_array.length > 2
    strings_array = strings_array[1],strings_array[0],switchpairs(strings_array[2..-1])
    return strings_array
  end
end

strings_array = ["one", "two", "three", "four", "five"]
print switchpairs(strings_array)

strings_array = ["one", "two", "three", "four"]
print switchpairs(strings_array)
