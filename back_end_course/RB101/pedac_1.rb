=begin
 problem - 
      inputs:target number
             the set of factors
 output: sum of multiples
 Implicit Requirements
 This problem statement also conveys a few rules that we must keep in mind:

 The multiples to be summed must be unique. The number 15 is present as a multiple of 3 and 5, but we add it just once when computing the sum(3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 = 78). Note that we learn this implicitly from the example: the uniqueness requirement is not stated explicitly.
 The target value is the limit, but it is not considered a multiple. In the example, the target, 20, is not included in the sum even though it’s a multiple of 5. As with the first rule, this requirement is implicit.
 All numbers are natural numbers: they are the set of integers greater than or equal to 0 or 1 (see this definition from mathworld.wolfram.com). Since adding 0 to any number doesn’t change it, it doesn’t matter which definition we use. For simplicity, we’ll assume that the natural numbers start with 1.

 Example- 
 1. Inputs:Target number: 20
 Factors: [3, 5]
 Output- 78

 2. Inputs:Target number: 20
 Factors: [3]
 Output- 63

 3. Inputs:Target number: 20
 Factors: []
 Output- 78

 4. Inputs:Target number: 20
 Factors: [19]
 Output- 19

 Data Structure - Arrays

 Algorithm -
 *First Mental Model
 Determine a list of all multiples of a set of factors up to a target value, then filter the list of multiples to the unique values. Finally, compute and return the sum of the unique multiples.

 1. Create an empty array called multiples that will contain the multiples.
 2. Check whether the list of factors is empty. If there are no factors, set the list to [3, 5]
 3. For every factor in the factors list:
     -Set the current_multiple to factor to keep track of the multiples of factor.
      -While current_multiple < target
            1. Append the current_multiple to multiples.
            2. Add factor to current_multiple.
 4. Filter duplicate numbers from multiples.
 5. Compute and return the sum of the numbers in multiples.

 Second Mental Model
 Incrementally build a list of numbers that are multiples of a set of one or more factors. Add a multiple to the list only if it is not yet on the list. Finally, compute and return the sum of the numbers on the list.

 1. Create an empty array called multiples that will contain the list of multiples
 2.Check whether the list of factors is empty. If there are no factors, set the list to [3, 5]
 3. For every factor in the factors list:
    -Set the current_multiple to factor to keep track of the multiples of factor.
    -While current_multiple < target
        1.Is the current_multiple in multiples already?
            Yes - do nothing
            No - Append the current_multiple to multiples.
        2.Add factor to current_multiple.
 Compute and return the sum of the numbers in multiples.
=end


def sum_of_multiples(target, factors)
    multiples = []
    factors = [3,5] if factors.size == 0
        
    factors.each do |n| 
        current_multiple = n

    while current_multiple < target
        multiples << current_multiple
        current_multiple += n 
    end 
  end

  multiples.uniq.inject(0, :+)
end

puts sum_of_multiples(20,[])
puts sum_of_multiples(20,[3])
puts sum_of_multiples(20,[5])
puts sum_of_multiples(20,[3,5])
puts sum_of_multiples(20,[19])