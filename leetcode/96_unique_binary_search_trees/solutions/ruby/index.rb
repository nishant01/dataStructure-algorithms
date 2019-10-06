# Desktop run for an example where numbers_length=5
# numbers_length = 5
# initial combinations = [1,1,0,0,0,0]
#
# [1,1,1,0,0,0]      # i = 2, j = 1
# [1,1,2,0,0,0]      # i = 2, j = 2
# [1,1,2,2,0,0]      # i = 3, j = 1
# [1,1,2,3,0,0]      # i = 3, j = 2
# [1,1,2,5,0,0]      # i = 3, j = 3
# [1,1,2,5,5,0]      # i = 4, j = 1
# [1,1,2,5,7,0]      # i = 4, j = 2
# [1,1,2,5,9,0]      # i = 4, j = 3
# [1,1,2,5,14,0]     # i = 4, j = 4
# [1,1,2,5,14,14]     # i = 5, j = 1
# [1,1,2,5,14,19]     # i = 5, j = 2
# [1,1,2,5,14,23]     # i = 5, j = 3
# [1,1,2,5,14,28]     # i = 5, j = 4
# [1,1,2,5,14,42]     # i = 5, j = 5


def num_trees(numbers_length)
  # Initialize a new array and compesate the 0 index, we will store the unique paths for the BST for each number here
  combinations = Array.new(numbers_length + 1, 0)

  # First and Second numbers can only have 1 possible unique combination (with the root or nothing)
  combinations[0] = 1
  combinations[1] = 1

  # We iterate for each one of the numbers
  (2..numbers_length).each do |i|
    # For each number we iterate till get to that number
    (1..i).each do |j|
      # To get the unique combinations of a given number, we need to get the combinations for each subset(the right and left) length.
      # Ex. For a 7 elements array, know the unique BST of 3
      # Subset 1: [1,2] and Subset 2: [4,5,6,7]
      possible_compinations = combinations[i-j] * combinations[j-1]

      # We need to sum the combinations of all numbers individually.
      # Ex. Number 3, will be i=3,
      #   combinations[0] = 1
      #   combinations[1] = 1
      #   combinations[2] = (array[2-1] * array[1-1]) + (array[2-2] * array[2-1]) = 1 + 1 = 2
      #   combinations[3] = (array[3-1] * array[1-1]) + (array[3-2] * array[2-1]) + (array[3-3] * array[3-1]) = 2 + 1 + 2 = 5
      combinations[i] += possible_compinations
    end
  end

  combinations[n]
end
