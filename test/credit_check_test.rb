require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'

class CreditCheckTest < Minitest::Test

  def tests_it_exists
    credit_check = CreditCheck.new("4929735477250543")
    assert_instance_of CreditCheck, credit_check
  end

  def tests_it_changes_to_array
    change_to_array = CreditCheck.new ("4929735477250543")
    assert_equal [3450527745379294], change_to_array
  end

  def tests_it_doubles_odd_numbers
   credit_check = CreditCheck.new("4929735477250543")
    assert_equal [8, 0, 4, 14, 10, 14, 4, 8], credit_check.double_odd_numbers
  end

  def tests_it_keeps_even_numbers
  credit_check = CreditCheck.new("4929735477250543")
  assert_equal [4, 0, 2, 7, 5, 7, 2, 4], credit_check.even_digits
  end

  def tests_it_add_numbers_greater_than_9
    credit_check = CreditCheck.new("4929735477250543")
    assert_equal [8, 0, 4, 5, 1, 5, 4, 8], credit_check.sum_greater_than_9

  end

  def tests_it_add_everything_up
    credit_check = CreditCheck.new("4929735477250543")
    assert_equal 80, credit_check.total_sum
  end

  def tests_is_it_valid
  credit_check = CreditCheck.new("4929735477250543")
  assert credit_check.is_card_valid
  end


end
