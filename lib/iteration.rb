def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  row_counter = 0 
  phrases = []
  while row_counter < src.count() do
    phrases << "I love " + src[row_counter][0] + " and " + src[row_counter][1] + " on my pizza"
    row_counter +=1
  end
  return phrases
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  row_counter = 0 
  number_array = []
  while row_counter < src.count do 
     if src[row_counter][0] < src[row_counter][1]
       number_array << src[row_counter][1]
     else
       number_array << src[row_counter][0]
     end
     row_counter += 1
  end
  return number_array
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  total = 0 
  row_counter = 0 
  while row_counter < src.count do 
    num1 = src[row_counter][0]
    num2 = src[row_counter][1]
    if num1 % 2 == 0 && num2 % 2 == 0
      total += num1 +num2
    end
    row_counter += 1
  end
  return total
end
