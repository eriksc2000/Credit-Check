card_number = "4929735477250543"

class CreditCheck

  def initialize(card_number)
    #put in credit card number
    @card_number = card_number
  end

   def change_to_array
    #change string to array and reverse it with digits
     card_number_reversed = @card_number.to_i.digits
   end

   def double_odd_numbers
     #double every other number
     doubled = change_to_array.map.with_index do |number, index|
       number * 2 if index.odd?
     end
   end

   def even_digits
    #placeholder for even digits not being doubled
     even = change_to_array.map.with_index do |number, index|
       if index.even?
         number
       end
     end
   end

   def sum_greater_than_9
     #if number is greater than 9, add them together via the -9 solution
     sum_greater_than_9 = double_odd_numbers.map do |number|
       if number > 9
         number - 9
       else
         number
      end
    end
  end


   def total_sum
     # all all numbers together (even and odd) for total sum
     (sum_greater_than_9 + even_digits).sum
   end

   def is_card_valid
     # check to see if sum has a modulous of 0 to make it valid
     if total_sum % 10 == 0
       "The number is valid!"
     else
       "The number is invalid!"
     end
  end
end
